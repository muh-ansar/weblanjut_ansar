# Generated by Django 4.2.11 on 2024-05-31 15:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('berita', '0003_artikel_created_at'),
    ]

    operations = [
        migrations.AddField(
            model_name='artikel',
            name='slug',
            field=models.SlugField(blank=True, max_length=255, null=True, unique=True),
        ),
    ]
