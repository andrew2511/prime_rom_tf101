.class final enum Lcom/asus/reader/book/BookViewActivity$ListPosition;
.super Ljava/lang/Enum;
.source "BookViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ListPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/reader/book/BookViewActivity$ListPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/reader/book/BookViewActivity$ListPosition;

.field public static final enum LAND_LEFT:Lcom/asus/reader/book/BookViewActivity$ListPosition;

.field public static final enum LAND_RIGHT:Lcom/asus/reader/book/BookViewActivity$ListPosition;

.field public static final enum PORT_DOWN:Lcom/asus/reader/book/BookViewActivity$ListPosition;

.field public static final enum PORT_UP:Lcom/asus/reader/book/BookViewActivity$ListPosition;


# instance fields
.field final x:I

.field final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v3, 0x41

    const/4 v4, 0x0

    .line 3014
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;

    const-string v1, "LAND_LEFT"

    invoke-direct {v0, v1, v4, v4, v3}, Lcom/asus/reader/book/BookViewActivity$ListPosition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->LAND_LEFT:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    new-instance v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;

    const-string v1, "LAND_RIGHT"

    const/16 v2, 0x2a8

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/asus/reader/book/BookViewActivity$ListPosition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->LAND_RIGHT:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    new-instance v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;

    const-string v1, "PORT_UP"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/asus/reader/book/BookViewActivity$ListPosition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->PORT_UP:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    new-instance v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;

    const-string v1, "PORT_DOWN"

    const/16 v2, 0x190

    const/16 v3, 0x280

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/asus/reader/book/BookViewActivity$ListPosition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->PORT_DOWN:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    .line 3013
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/asus/reader/book/BookViewActivity$ListPosition;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ListPosition;->LAND_LEFT:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ListPosition;->LAND_RIGHT:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ListPosition;->PORT_UP:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ListPosition;->PORT_DOWN:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    aput-object v1, v0, v7

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->$VALUES:[Lcom/asus/reader/book/BookViewActivity$ListPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 3017
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3018
    iput p3, p0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->x:I

    .line 3019
    iput p4, p0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->y:I

    .line 3020
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/reader/book/BookViewActivity$ListPosition;
    .locals 1
    .parameter

    .prologue
    .line 3013
    const-class v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/asus/reader/book/BookViewActivity$ListPosition;

    return-object p0
.end method

.method public static values()[Lcom/asus/reader/book/BookViewActivity$ListPosition;
    .locals 1

    .prologue
    .line 3013
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->$VALUES:[Lcom/asus/reader/book/BookViewActivity$ListPosition;

    invoke-virtual {v0}, [Lcom/asus/reader/book/BookViewActivity$ListPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/reader/book/BookViewActivity$ListPosition;

    return-object v0
.end method
