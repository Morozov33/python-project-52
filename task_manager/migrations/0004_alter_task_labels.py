# Generated by Django 4.1.3 on 2022-11-29 10:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('task_manager', '0003_alter_task_labels'),
    ]

    operations = [
        migrations.AlterField(
            model_name='task',
            name='labels',
            field=models.ManyToManyField(through='task_manager.labels_of_task', to='task_manager.label', verbose_name='Labels'),
        ),
    ]
