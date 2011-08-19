.class public abstract Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub;
.super Landroid/os/Binder;
.source "IUserDictionaryConfig.java"

# interfaces
.implements Lcom/nuance/xt9/input/IUserDictionaryConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/IUserDictionaryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nuance.xt9.input.IUserDictionaryConfig"

.field static final TRANSACTION_getCurrentUserSelectedLanguageId:I = 0x4

.field static final TRANSACTION_isLanguageChange:I = 0x5

.field static final TRANSACTION_isSupportChineseSimplify:I = 0x3

.field static final TRANSACTION_isSupportChineseTraditional:I = 0x2

.field static final TRANSACTION_query:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.nuance.xt9.input.IUserDictionaryConfig"

    invoke-virtual {p0, p0, v0}, Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nuance/xt9/input/IUserDictionaryConfig;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    .line 29
    :cond_0
    const-string v1, "com.nuance.xt9.input.IUserDictionaryConfig"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nuance/xt9/input/IUserDictionaryConfig;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/nuance/xt9/input/IUserDictionaryConfig;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v3, "com.nuance.xt9.input.IUserDictionaryConfig"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.nuance.xt9.input.IUserDictionaryConfig"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, _arg0:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v1, _arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub;->query(Ljava/lang/String;Ljava/util/List;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move v3, v4

    .line 58
    goto :goto_0

    .line 62
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2
    const-string v3, "com.nuance.xt9.input.IUserDictionaryConfig"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub;->isSupportChineseTraditional()Z

    move-result v2

    .line 64
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 66
    goto :goto_0

    :cond_0
    move v3, v5

    .line 65
    goto :goto_1

    .line 70
    .end local v2           #_result:Z
    :sswitch_3
    const-string v3, "com.nuance.xt9.input.IUserDictionaryConfig"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub;->isSupportChineseSimplify()Z

    move-result v2

    .line 72
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 74
    goto :goto_0

    :cond_1
    move v3, v5

    .line 73
    goto :goto_2

    .line 78
    .end local v2           #_result:Z
    :sswitch_4
    const-string v3, "com.nuance.xt9.input.IUserDictionaryConfig"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub;->getCurrentUserSelectedLanguageId()I

    move-result v2

    .line 80
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 82
    goto :goto_0

    .line 86
    .end local v2           #_result:I
    :sswitch_5
    const-string v3, "com.nuance.xt9.input.IUserDictionaryConfig"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub;->isLanguageChange()Z

    move-result v2

    .line 88
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v2, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 90
    goto :goto_0

    :cond_2
    move v3, v5

    .line 89
    goto :goto_3

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
