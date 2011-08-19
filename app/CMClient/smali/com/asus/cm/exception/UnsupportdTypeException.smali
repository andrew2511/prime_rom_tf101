.class public Lcom/asus/cm/exception/UnsupportdTypeException;
.super Ljava/lang/Exception;
.source "UnsupportdTypeException.java"


# static fields
.field private static final serialVersionUID:J = -0x206a57fef2f55065L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pMsg"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
