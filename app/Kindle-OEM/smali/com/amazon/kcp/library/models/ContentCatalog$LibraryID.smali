.class final enum Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;
.super Ljava/lang/Enum;
.source "ContentCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/ContentCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LibraryID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

.field public static final enum ARCHIVE:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

.field public static final enum DOWNLOAD:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

.field public static final enum LOCAL:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    const-string v1, "ARCHIVE"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->ARCHIVE:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    .line 94
    new-instance v0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->DOWNLOAD:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    .line 95
    new-instance v0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->LOCAL:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    sget-object v1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->ARCHIVE:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->DOWNLOAD:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->LOCAL:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->$VALUES:[Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;
    .locals 1
    .parameter

    .prologue
    .line 91
    const-class v0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->$VALUES:[Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    return-object v0
.end method
