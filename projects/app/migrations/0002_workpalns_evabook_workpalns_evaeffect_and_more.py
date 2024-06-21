# Generated by Django 5.0.6 on 2024-06-21 17:14

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='workpalns',
            name='evaBook',
            field=models.IntegerField(null=True, validators=[django.core.validators.MinValueValidator(1), django.core.validators.MaxValueValidator(10)], verbose_name='教材评价'),
        ),
        migrations.AddField(
            model_name='workpalns',
            name='evaEffect',
            field=models.IntegerField(null=True, validators=[django.core.validators.MinValueValidator(1), django.core.validators.MaxValueValidator(10)], verbose_name='效果评价'),
        ),
        migrations.AddField(
            model_name='workpalns',
            name='evaTeacher',
            field=models.IntegerField(null=True, validators=[django.core.validators.MinValueValidator(1), django.core.validators.MaxValueValidator(10)], verbose_name='教学评价'),
        ),
    ]