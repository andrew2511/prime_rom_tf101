.class public Lcom/asus/dm/fota/Common;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/fota/Common$priority;
    }
.end annotation


# static fields
.field public static final FSNAME:Ljava/lang/String; = "fs"

.field public static final FWNAME:Ljava/lang/String; = "fw"

.field public static final KEY:[B = null

.field public static final UANAME:Ljava/lang/String; = "ua"

.field static final UPDATEPKGNAME:Ljava/lang/String; = "updatepack"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "com.asus.dm.fota"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/asus/dm/fota/Common;->KEY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method
