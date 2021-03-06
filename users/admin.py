from django.contrib import admin
from .models import User,Student,Marketing_Manager,Marketing_Coordinator,Faculty,Guest,AcademicYear
from django.contrib.auth.forms import UserCreationForm
from django.forms import PasswordInput,HiddenInput
from .forms import StudentRegisterForm
from django import forms

admin.site.site_header = "University Magazine Admin Dashboard"


@admin.register(User)
class AuthorAdmin(admin.ModelAdmin):
    fields = (
        'email',
        'role',
        'date_joined',
        'last_login'
        )
    list_display = ('email','role')
    list_display_links = ('email','role')

class GuestAdminForm(UserCreationForm):
    roles=(('S','Student'),('MC','Marketing Coordinator'),('MM','Marketing Manager'),('G','Guest'),('A','Admin'))
    role = forms.ChoiceField(initial='G',choices=roles,widget=HiddenInput())
    

    class Meta:
        model = Guest
        fields = (
            'name',
            'role',
            'faculty',
            'address',
            'phone_number',
            'email',
            )
        exclude = ('password1','password2')
        widgets = {
            'role' : HiddenInput(),
            'widget' : PasswordInput()
        }

@admin.register(Guest)
class AuthorAdmin(admin.ModelAdmin):
    form = GuestAdminForm
    verbose_name_plural = ("Guest")
    list_display = ('name','email','faculty','role')
    list_display_links = ('name',)


class StudentAdminForm(UserCreationForm):
    roles=(('S','Student'),('MC','Marketing Coordinator'),('MM','Marketing Manager'))
    role = forms.ChoiceField(initial='S',choices=roles,widget=HiddenInput())
    class Meta:
        model = Student
        fields = (
            'image',
            'name',
            'gender',
            'role',
            'student_number',
            'faculty',
            'address',
            'phone_number',
            'email',
            )
        widgets = {
            'role' : HiddenInput(),
            'widget' : PasswordInput()
        }


@admin.register(Student)
class AuthorAdmin(admin.ModelAdmin):
    form = StudentAdminForm
    
    verbose_name_plural = ("Students")
    list_display = ('name','email','student_number','faculty')
    list_display_links = ('name','email')


class MarketingManagerAdminForm(UserCreationForm):
    roles=(('S','Student'),('MC','Marketing Coordinator'),('MM','Marketing Manager'))
    role = forms.ChoiceField(initial='MM',choices=roles,widget=HiddenInput())

    class Meta:
        model = Marketing_Manager
        fields = (
            'image',
            'name',
            'gender',
            'role',
            'dob',
            'address',
            'phone_number',
            'email',
            )


@admin.register(Marketing_Manager)
class AuthorAdmin(admin.ModelAdmin):
    form = MarketingManagerAdminForm
    verbose_name_plural = ("Students")
    list_display = ('name','email')
    list_display_links = ('name','email')
    verbose_name_plural = ("Marketing Manager")


class MarketingCoordinatorAdminForm(UserCreationForm):
    roles=(('S','Student'),('MC','Marketing Coordinator'),('MM','Marketing Manager'))
    role = forms.ChoiceField(initial='MC',choices=roles,widget=HiddenInput())

    class Meta:
        model = Marketing_Coordinator
        fields = (
            'image',
            'name',
            'gender',
            'role',
            'dob',
            'faculty',
            'address',
            'phone_number',
            'email',
            )


@admin.register(Marketing_Coordinator)
class AuthorAdmin(admin.ModelAdmin):
    form = MarketingCoordinatorAdminForm
    verbose_name_plural = ("Marketing Coordinators")
    list_display = ('name','email','faculty')
    list_display_links = ('name','email')

@admin.register(Faculty)
class AuthorAdmin(admin.ModelAdmin):
    verbose_name_plural = ("Faculties")
    ordering =('-academic_year',)

admin.site.register(AcademicYear)