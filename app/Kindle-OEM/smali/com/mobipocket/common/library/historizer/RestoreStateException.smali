.class public Lcom/mobipocket/common/library/historizer/RestoreStateException;
.super Ljava/lang/Exception;
.source "RestoreStateException.java"


# static fields
.field public static ID_NOT_VALID:Ljava/lang/String;

.field public static ID_STATE_CORRUPTED:Ljava/lang/String;

.field public static ID_STATE_NOT_AVAILABLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "STATE_NOT_AVAILABLE"

    sput-object v0, Lcom/mobipocket/common/library/historizer/RestoreStateException;->ID_STATE_NOT_AVAILABLE:Ljava/lang/String;

    .line 24
    const-string v0, "NOT_VALID"

    sput-object v0, Lcom/mobipocket/common/library/historizer/RestoreStateException;->ID_NOT_VALID:Ljava/lang/String;

    .line 29
    const-string v0, "STATE_CORRUPTED"

    sput-object v0, Lcom/mobipocket/common/library/historizer/RestoreStateException;->ID_STATE_CORRUPTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method
