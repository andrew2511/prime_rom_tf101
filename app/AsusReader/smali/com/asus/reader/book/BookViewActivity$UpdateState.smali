.class final enum Lcom/asus/reader/book/BookViewActivity$UpdateState;
.super Ljava/lang/Enum;
.source "BookViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UpdateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/reader/book/BookViewActivity$UpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/reader/book/BookViewActivity$UpdateState;

.field public static final enum NONE:Lcom/asus/reader/book/BookViewActivity$UpdateState;

.field public static final enum NOT_UPDATE:Lcom/asus/reader/book/BookViewActivity$UpdateState;

.field public static final enum UPDATED:Lcom/asus/reader/book/BookViewActivity$UpdateState;

.field public static final enum UPDATING:Lcom/asus/reader/book/BookViewActivity$UpdateState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 270
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$UpdateState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/BookViewActivity$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$UpdateState;->NONE:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    new-instance v0, Lcom/asus/reader/book/BookViewActivity$UpdateState;

    const-string v1, "NOT_UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/asus/reader/book/BookViewActivity$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$UpdateState;->NOT_UPDATE:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    new-instance v0, Lcom/asus/reader/book/BookViewActivity$UpdateState;

    const-string v1, "UPDATING"

    invoke-direct {v0, v1, v4}, Lcom/asus/reader/book/BookViewActivity$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$UpdateState;->UPDATING:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    new-instance v0, Lcom/asus/reader/book/BookViewActivity$UpdateState;

    const-string v1, "UPDATED"

    invoke-direct {v0, v1, v5}, Lcom/asus/reader/book/BookViewActivity$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$UpdateState;->UPDATED:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/asus/reader/book/BookViewActivity$UpdateState;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$UpdateState;->NONE:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$UpdateState;->NOT_UPDATE:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$UpdateState;->UPDATING:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$UpdateState;->UPDATED:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/asus/reader/book/BookViewActivity$UpdateState;->$VALUES:[Lcom/asus/reader/book/BookViewActivity$UpdateState;

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
    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/reader/book/BookViewActivity$UpdateState;
    .locals 1
    .parameter

    .prologue
    .line 270
    const-class v0, Lcom/asus/reader/book/BookViewActivity$UpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/asus/reader/book/BookViewActivity$UpdateState;

    return-object p0
.end method

.method public static values()[Lcom/asus/reader/book/BookViewActivity$UpdateState;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$UpdateState;->$VALUES:[Lcom/asus/reader/book/BookViewActivity$UpdateState;

    invoke-virtual {v0}, [Lcom/asus/reader/book/BookViewActivity$UpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/reader/book/BookViewActivity$UpdateState;

    return-object v0
.end method
