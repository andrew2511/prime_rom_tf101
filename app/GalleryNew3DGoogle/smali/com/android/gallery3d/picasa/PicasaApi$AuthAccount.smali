.class public final Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
.super Ljava/lang/Object;
.source "PicasaApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasa/PicasaApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthAccount"
.end annotation


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final authToken:Ljava/lang/String;

.field public final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .parameter "user"
    .parameter "authToken"
    .parameter "account"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->authToken:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->account:Landroid/accounts/Account;

    .line 84
    return-void
.end method
