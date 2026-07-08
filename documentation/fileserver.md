# File Server

## Goal

Create a shared departmental file server with access control based on Active Directory security groups.

---

## Folder Structure

```
C:\Departments
│
├── IT
├── HR
├── Sales
└── Management
```

---

## Share

Folder Name:

Departments

UNC Path:

\\DC01\Departments

---

## NTFS Permissions

| Folder | Group | Permissions |
|---------|------|-------------|
| IT | IT_Admins | Full Control |
| HR | HR_Users | Modify |
| Sales | Sales_Users | Modify |
| Management | Management_Users | Modify |

---

## Share Permissions

Authenticated Users

- Full Control

NTFS permissions are used to restrict access.

---

## Drive Mapping

A Group Policy Object automatically maps:

Drive Letter:

Z:

Network Path:

\\DB01\Departments

---

## Result

After logging into the domain:

- Network drive Z: appears automatically.
- Users can only access folders allowed by their Active Directory group.
- Access is managed centrally using Security Groups.

---

## Screenshots

### Folder Structure

<img width="691" height="345" alt="image" src="https://github.com/user-attachments/assets/b953f4e3-9941-4943-ad13-ec6aee14ddef" />


---

### NTFS Permissions
<img width="362" height="480" alt="image" src="https://github.com/user-attachments/assets/35d5228e-7bf8-42ef-97aa-0c631e5ea753" />
<img width="363" height="477" alt="image" src="https://github.com/user-attachments/assets/83534430-19af-491b-ad56-071bc12863ef" />
<img width="366" height="486" alt="image" src="https://github.com/user-attachments/assets/2621094e-c692-4eea-ad4c-bf4af6cf8de2" />



---

### Share Settings

<img width="624" height="474" alt="image" src="https://github.com/user-attachments/assets/a2b75daa-3787-4f30-91c2-33382f7d03a1" />


---

### Drive Mapping GPO
<img width="789" height="411" alt="image" src="https://github.com/user-attachments/assets/7388d419-0eed-42cd-8eac-8b8bbc22415c" />

---

### Client
<img width="796" height="381" alt="image" src="https://github.com/user-attachments/assets/bbeafe44-cadd-4db3-a372-114ce8feb04c" />
<img width="778" height="504" alt="image" src="https://github.com/user-attachments/assets/8f7246e3-f689-45d4-8081-b58abe213ba7" />



