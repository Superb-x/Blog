from django import forms
from .models import Comment

class CommentFrom(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ['name', 'email', 'url', 'text']