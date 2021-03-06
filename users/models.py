from django.db import models
from django.contrib.auth.models import BaseUserManager, AbstractUser


class UserManager(BaseUserManager):
    
    def _create_user(self, email, password=None, **extra_fields):
        """Create and save a User with the given email and password."""
        if not email:
            raise ValueError('The given email must be set')
        email = self.normalize_email(email)
        user = self.model(email=email, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, password=None, **extra_fields):
        """Create and save a SuperUser with the given email and password."""
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)

        if extra_fields.get('is_staff') is not True:
            raise ValueError('Superuser must have is_staff=True.')
        if extra_fields.get('is_superuser') is not True:
            raise ValueError('Superuser must have is_superuser=True.')

        return self._create_user(email, password, **extra_fields)


class User(AbstractUser):
    username = None
    roles=(('A','Admin'),('S','Student'),('MC','Marketing Coordinator'),('MM','Marketing Manager'),('G','Guest'))
    email = models.EmailField(
        verbose_name='email address',
        max_length=255,
        unique=True,
    )
    role = models.CharField(max_length=30,choices=roles,verbose_name='Role',null=True)
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = [] # Email & Password are required by default.

    objects = UserManager()

class AcademicYear(models.Model):
    years = (   
        ('1',2015),
        ('2',2016),
        ('3',2017), 
        ('4',2018),
        ('5',2019),
        )
    academic_year = models.CharField(max_length=50,verbose_name='Academic Year',null=True,choices=years,unique=True)
    new_closure_date = models.DateField(null=True,verbose_name='New Post Closure Date')
    final_closure_date = models.DateField(null=True,verbose_name='Final Closure Date')
    
    class Meta:
        ordering = ['-academic_year']
        db_table = 'Academic Year'
        verbose_name = "Academic Year"
        verbose_name_plural = "Academic Year"
    
    def __str__(self):
        return f'Academic Year {self.get_academic_year_display()}'

class Faculty(models.Model):
    faculties = (   
        ('IT','Information Technology'),
        ('BM','Business Management'),
        ('MS','Medical Science'), 
        ('ME','Mechantronic Engineering'),
        ('AF','Accounting and Financial'),
        )
    academic_year = models.ForeignKey(AcademicYear,on_delete=models.CASCADE,null=True)
    name = models.CharField(max_length=50,verbose_name='Faculty Name',null=True,choices=faculties)


    class Meta:
        unique_together = ('name', 'academic_year',)
        ordering =['academic_year']
        db_table = 'Faculty'
        verbose_name = "Faculty"
        verbose_name_plural = "Faculties"

    def __str__(self):
        return f'{self.get_name_display()} ({self.academic_year.get_academic_year_display()} Academic Year)'


class Student(User):
    name = models.CharField(max_length=20,null=True,verbose_name= 'Full Name')
    genders = (('M','Male'),('F','Female'))
    image = models.ImageField(default = 'default.jpg',upload_to = 'student_image',verbose_name='Image')
    gender = models.CharField(choices= genders,max_length=20,verbose_name='Gender')
    student_number = models.CharField(null=True,verbose_name="Student Number",max_length=20)
    faculty = models.ForeignKey(Faculty,max_length=20,verbose_name='Faculty',null = True,on_delete=models.CASCADE)
    phone_number = models.CharField(max_length=20,null=True,verbose_name= 'Mobile')
    address = models.TextField(max_length=100,null=True,verbose_name='Address')

    class Meta:
        db_table = 'Student'
        verbose_name = 'Student'
        verbose_name_plural = 'Students'

    def __str__(self):
        return f'{self.name}'


class Marketing_Coordinator(User):
    genders = (('M','Male'),('F','Female'))
    name = models.CharField(max_length=20,null=True,verbose_name= 'Full Name')
    image = models.ImageField(default = 'default.jpg',upload_to = 'mc_image',verbose_name='Image')
    gender = models.CharField(choices= genders,max_length=20,verbose_name='Gender')
    dob = models.DateField(null=True,verbose_name="Date of Birth")
    faculty = models.OneToOneField(Faculty,max_length=20,verbose_name='Faculty',null = True,on_delete=models.CASCADE)
    phone_number = models.CharField(max_length=20,null=True,verbose_name= 'Mobile')
    address = models.TextField(max_length=100,null=True,verbose_name='Address')

    def __str__(self):
        return self.name
    
    class Meta:
        db_table = 'Marketing Coordinator'
        verbose_name = 'Marketing Coordinator'
        verbose_name_plural = 'Marketing Coordinators'


class Marketing_Manager(User):
    name = models.CharField(max_length=20,null=True,verbose_name= 'Full Name')
    genders = (('M','Male'),('F','Female'))
    image = models.ImageField(default = 'default.jpg',upload_to = 'mm_image',verbose_name='Image')
    gender = models.CharField(choices= genders,max_length=20,verbose_name='Gender')
    dob = models.DateField(null=True,verbose_name="Date of Birth")
    phone_number = models.CharField(max_length=20,null=True,verbose_name= 'Mobile')
    address = models.TextField(max_length=100,null=True,verbose_name='Address')

    class Meta:
        db_table = 'Marketing Manager'
        verbose_name = 'Marketing Manager'
        verbose_name_plural = 'Marketing Managers'

    def __str__(self):
        return self.name
    

class Guest(User):
    name = models.CharField(max_length=20,null=True,verbose_name= 'Full Name')
    phone_number = models.CharField(max_length=20,null=True,verbose_name= 'Mobile')
    address = models.TextField(max_length=100,null=True,verbose_name='Address')
    faculty = models.OneToOneField(Faculty,max_length=20,verbose_name='Faculty',null = True,on_delete=models.CASCADE)

    class Meta:
        db_table = 'Guest'
        verbose_name = 'Guest'
        verbose_name_plural = 'Guest'

    def __str__(self):
        return self.name
    

