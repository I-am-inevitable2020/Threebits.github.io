# Generated by Django 4.1.6 on 2023-04-20 21:53

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('threebits', '0028_alter_album_uploaded_on'),
    ]

    operations = [
        migrations.AlterField(
            model_name='album',
            name='uploaded_on',
            field=models.DateField(default=datetime.datetime(2023, 4, 20, 21, 53, 44, 676612)),
        ),
    ]