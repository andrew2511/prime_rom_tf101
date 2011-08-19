.class final Lcom/asus/provisioning/oma/AppAuth$1;
.super Ljava/lang/Object;
.source "AppAuth.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/provisioning/oma/AppAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/asus/provisioning/oma/AppAuth;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/asus/provisioning/oma/AppAuth;
    .locals 2
    .parameter "in"

    .prologue
    .line 124
    new-instance v0, Lcom/asus/provisioning/oma/AppAuth;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/asus/provisioning/oma/AppAuth;-><init>(Landroid/os/Parcel;Lcom/asus/provisioning/oma/AppAuth$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/asus/provisioning/oma/AppAuth$1;->createFromParcel(Landroid/os/Parcel;)Lcom/asus/provisioning/oma/AppAuth;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/asus/provisioning/oma/AppAuth;
    .locals 1
    .parameter "size"

    .prologue
    .line 129
    new-array v0, p1, [Lcom/asus/provisioning/oma/AppAuth;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/asus/provisioning/oma/AppAuth$1;->newArray(I)[Lcom/asus/provisioning/oma/AppAuth;

    move-result-object v0

    return-object v0
.end method
