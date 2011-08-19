.class public final enum Lcom/asus/reader/book/BookViewActivity$SelectionState;
.super Ljava/lang/Enum;
.source "BookViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/reader/book/BookViewActivity$SelectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/reader/book/BookViewActivity$SelectionState;

.field public static final enum AFTER_DRAGGING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

.field public static final enum DRAG_SELECTING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

.field public static final enum LONGPRESS_SELECTED:Lcom/asus/reader/book/BookViewActivity$SelectionState;

.field public static final enum NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

.field public static final enum PRESS_ON_HIGHLIGHT:Lcom/asus/reader/book/BookViewActivity$SelectionState;

.field public static final enum PRESS_ON_NOTE:Lcom/asus/reader/book/BookViewActivity$SelectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2468
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/asus/reader/book/BookViewActivity$SelectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    new-instance v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;

    const-string v1, "LONGPRESS_SELECTED"

    invoke-direct {v0, v1, v4}, Lcom/asus/reader/book/BookViewActivity$SelectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->LONGPRESS_SELECTED:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    new-instance v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;

    const-string v1, "DRAG_SELECTING"

    invoke-direct {v0, v1, v5}, Lcom/asus/reader/book/BookViewActivity$SelectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->DRAG_SELECTING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    new-instance v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;

    const-string v1, "AFTER_DRAGGING"

    invoke-direct {v0, v1, v6}, Lcom/asus/reader/book/BookViewActivity$SelectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->AFTER_DRAGGING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    new-instance v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;

    const-string v1, "PRESS_ON_HIGHLIGHT"

    invoke-direct {v0, v1, v7}, Lcom/asus/reader/book/BookViewActivity$SelectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->PRESS_ON_HIGHLIGHT:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    new-instance v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;

    const-string v1, "PRESS_ON_NOTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/BookViewActivity$SelectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->PRESS_ON_NOTE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/asus/reader/book/BookViewActivity$SelectionState;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->LONGPRESS_SELECTED:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->DRAG_SELECTING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->AFTER_DRAGGING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->PRESS_ON_HIGHLIGHT:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/reader/book/BookViewActivity$SelectionState;->PRESS_ON_NOTE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->$VALUES:[Lcom/asus/reader/book/BookViewActivity$SelectionState;

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
    .line 2468
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/reader/book/BookViewActivity$SelectionState;
    .locals 1
    .parameter

    .prologue
    .line 2468
    const-class v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/asus/reader/book/BookViewActivity$SelectionState;

    return-object p0
.end method

.method public static values()[Lcom/asus/reader/book/BookViewActivity$SelectionState;
    .locals 1

    .prologue
    .line 2468
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->$VALUES:[Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-virtual {v0}, [Lcom/asus/reader/book/BookViewActivity$SelectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/reader/book/BookViewActivity$SelectionState;

    return-object v0
.end method
