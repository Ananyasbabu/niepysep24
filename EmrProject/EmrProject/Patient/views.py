
from django.shortcuts import render, redirect
from .models import Patient ######
# Create your views here.
def list_of_doctors(request):
    doctors = Patient.objects.all() ######
    return render(request, 'list.html', {'doctors' : doctors}) ######

def create_doctor(request):
    if request.method == 'GET':
        return render(request, 'create.html')
    elif request.method == 'POST':
        name = request.POST['name'] 
        disease = request.POST['disease'] 
        age = request.POST['age'] 
        doctor = Patient(name = name, disease = disease, age = age)
        doctor.save()
        return redirect('list_of_doctors')         

def edit_doctor(request, id):
    if request.method == 'GET':
        doctor = Patient.objects.get(id = id)
        return render(request, 'edit.html', {'doctor' :doctor})
    elif request.method == 'POST':
        doctor = Patient.objects.get(id = id)
        doctor.name = request.POST['name'] 
        doctor.disease = request.POST['disease'] 
        doctor.age = request.POST['age'] 
        doctor.save()
        return redirect('list_of_doctors')    

        
def delete_doctor(request, id):
    doctor = Patient.objects.get(id = id)
    doctor.delete()
    return redirect('list_of_doctors')
