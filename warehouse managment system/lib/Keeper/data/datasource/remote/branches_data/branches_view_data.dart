import '../../../../core/class/crud.dart';

class BranchesData {
  Crud curd;

  BranchesData(this.curd);

  getData() async {

    var response = await curd.GetData(
        "http://192.168.1.102:8000/api/managers/ShowBranches",
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiZWNmZTYzNDU2YjRmZDI1MzNiOTlmYzFhMWFkMmU4N2IxYjRhYjQyM2IxOGE2MTNhZTE1ZmMxZDUwYzA0NTZjZWExNTJjNWI1NmRlZTE4MTkiLCJpYXQiOjE2ODA0ODQ1NDMuOTgyNTE3LCJuYmYiOjE2ODA0ODQ1NDMuOTgyNTIyLCJleHAiOjE3MTIxMDY5NDMuOTc0NDQ5LCJzdWIiOiI0Iiwic2NvcGVzIjpbIm1hbmFnZXIiXX0.phxiQWRy5HcRznYVHJbysPXkXPZDnmUQJ27mNv1GFn-8PH2fvUZ7KdkrKbMP5fM5EvCRPFU4GVb8i-lP_nNuQhivO5ZsuIjtB6mslpZtQ24w6E_TwrB5i0DRVwLsXOQsPKvMDNwFfd4E937EvWnunciymRKGsNgtuZ2JJGXEoypH2il0o8kbZzzhSQtSh9up0qyYxuGFI0IJvVYt-MV3G78CknA5ZD6DmbDwgYXrWaAVspL-hfERc-r6W-iqk8eTRdCx1Ce3FW6j2Ps7Pq0wdMnHgSSodMe_mSiuVLs_LNJy_4OquqWUaiCa5BXq_mH6Tq_YlwfOeIaX4zRQECrBx_Yf--vGgtLbCSADSJfkTiewEPdfunsIgaUwzTeBI01yV97SwhHKwgytCCwDRsNLmF8uWCaOfa2v8sAYqYtCnqLJ7kBCfiaUIwEHzsKqLzFxASVqXvxClus6nUKfmpXwAThhbhUN4y62ERXu5nVEskggSyZrSxVuZcHsnVWbeYsNP9PPliz3DlDqEUZcX2JoaXbbL9WvD8-IQzwrX6Pf3mUiYb5FdYwrTGFL3rgWHw1n2hzY7AkxD0ExpEkJ8tBFUeb9ymFaOX6i2I8Z_6TnhBFNUIltdlQSzEC2XbP6kvcvMLywAq7tNyQ-7FukLON7I5bLpVG2j92qaWFldVdHYMY");
    print("after///////////////////////////////////////////////////////");
    return response[0];
  }
}
