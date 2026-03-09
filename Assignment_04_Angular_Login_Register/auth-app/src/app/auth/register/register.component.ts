import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';
import { ReactiveFormsModule, FormBuilder, Validators } from '@angular/forms';

@Component({
  selector: 'app-register',
  standalone: true,
  imports: [RouterModule, ReactiveFormsModule],
  templateUrl: './register.html',
  styleUrls: ['./register.css']
})
export class RegisterComponent {

  registerForm;

  constructor(private fb: FormBuilder) {
    this.registerForm = this.fb.group({
      fullName: ['', Validators.required],
      gender: ['', Validators.required],
      aadhar: ['', [Validators.required, Validators.pattern(/^\d{12}$/)]],

      fatherName: ['', Validators.required],
      motherName: ['', Validators.required],

      phone: ['', [Validators.required, Validators.pattern(/^\d{10}$/)]],
      parentPhone: ['', [Validators.required, Validators.pattern(/^\d{10}$/)]],
      email: ['', [Validators.required, Validators.email]],

      currentAddress: ['', Validators.required],
      permanentAddress: ['', Validators.required],
      sameAddress: [false],

      pincode: ['', [Validators.required, Validators.pattern(/^\d{6}$/)]],

      terms: [false, Validators.requiredTrue]
    });
  }

  copyAddress(event: any) {
    if (event.target.checked) {
      this.registerForm.patchValue({
        permanentAddress: this.registerForm.value.currentAddress
      });
    }
  }

  submit() {
    if (this.registerForm.valid) {
      console.log(this.registerForm.value);
      alert('Registration Successful');
    } else {
      alert('Please fill all required fields correctly');
    }
  }
}