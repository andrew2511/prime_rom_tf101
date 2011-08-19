.class public Lcom/google/android/vending/remoting/api/VendingApi;
.super Ljava/lang/Object;
.source "VendingApi.java"


# instance fields
.field private final mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/google/android/vending/remoting/api/VendingApiContext;)V
    .locals 0
    .parameter "requestQueue"
    .parameter "apiContext"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 56
    iput-object p2, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    .line 57
    return-void
.end method
