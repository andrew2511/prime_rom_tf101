.class public Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
.super Lcom/asus/dmlib/syncml/exception/SyncMLException;
.source "SyncMLElementNotSupportException.java"


# static fields
.field private static final serialVersionUID:J = 0x7e5214a2ebbf644cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/exception/SyncMLException;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/asus/dmlib/syncml/exception/SyncMLException;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method
