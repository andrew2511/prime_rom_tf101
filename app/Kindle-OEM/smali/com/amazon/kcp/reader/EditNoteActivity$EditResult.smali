.class public final enum Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;
.super Ljava/lang/Enum;
.source "EditNoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/EditNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EditResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

.field public static final enum ADDED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

.field public static final enum DELETED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

.field public static final enum EDITED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    const-string v1, "ADDED"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->ADDED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    .line 37
    new-instance v0, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    const-string v1, "EDITED"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->EDITED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    .line 42
    new-instance v0, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    const-string v1, "DELETED"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->DELETED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    sget-object v1, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->ADDED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->EDITED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->DELETED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->$VALUES:[Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->$VALUES:[Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    return-object v0
.end method
