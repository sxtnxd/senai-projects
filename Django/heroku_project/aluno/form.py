from django import forms


class Aluno(forms.Form):
    nome = forms.CharField(label='aluno', max_length=50)
    email = forms.CharField(label='email', max_length=20)
    obs = forms.CharField(widget=forms.Textarea(), label='obs', min_length=10)
