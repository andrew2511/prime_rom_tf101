.class public Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;
.super Landroid/os/Binder;
.source "ContentFetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/ContentFetchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/service/ContentFetchService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/service/ContentFetchService;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/google/android/apps/books/service/ContentFetchService;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    return-object v0
.end method
