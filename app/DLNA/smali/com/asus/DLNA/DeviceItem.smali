.class Lcom/asus/DLNA/DeviceItem;
.super Ljava/lang/Object;
.source "Utils.java"


# instance fields
.field private mFriendlyName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/asus/DLNA/DeviceItem;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public setmFriendlyName(Ljava/lang/String;)V
    .locals 0
    .parameter "tempname"

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/asus/DLNA/DeviceItem;->mFriendlyName:Ljava/lang/String;

    return-void
.end method
