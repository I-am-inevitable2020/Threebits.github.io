# Generated by Django 4.1.6 on 2023-04-13 14:24

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('threebits', '0015_alter_album_uploaded_on'),
    ]

    operations = [
        migrations.AlterField(
            model_name='album',
            name='uploaded_on',
            field=models.DateField(default=datetime.datetime(2023, 4, 13, 14, 24, 21, 632794)),
        ),
    ]
