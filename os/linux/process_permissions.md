There are a few core concepts: 

1. Effective User ID
1. Real User ID 
1. Real Group ID
1. Effective Group ID


When a user executes a file, they execute it with the permissions of the user
who owns that file. However, the real user ID is also set, which means that 
there exists a mechanism that prevents the user from accessing files there 
user does not have permissions to access.

