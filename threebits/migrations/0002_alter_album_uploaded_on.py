# Generated by Django 4.1.6 on 2023-04-07 23:39

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('threebits', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='album',
            name='uploaded_on',
            field=models.DateField(default=datetime.datetime(2023, 4, 7, 23, 39, 44, 393554)),
        ),
    ]