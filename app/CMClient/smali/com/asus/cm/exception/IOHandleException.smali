.class public Lcom/asus/cm/exception/IOHandleException;
.super Ljava/lang/Exception;
.source "IOHandleException.java"


# static fields
.field private static final serialVersionUID:J = -0x28f66cc3d7f3225fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
