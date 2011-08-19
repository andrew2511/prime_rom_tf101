.class final enum Lcom/amazon/kcp/library/HomeActivity$BooksViewType;
.super Ljava/lang/Enum;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BooksViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/library/HomeActivity$BooksViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

.field public static final enum BACK_ISSUES_ROW:Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

.field public static final enum BOOK:Lcom/amazon/kcp/library/HomeActivity$BooksViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    const-string v1, "BOOK"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->BOOK:Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    .line 45
    new-instance v0, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    const-string v1, "BACK_ISSUES_ROW"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->BACK_ISSUES_ROW:Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    sget-object v1, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->BOOK:Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->BACK_ISSUES_ROW:Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->$VALUES:[Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/HomeActivity$BooksViewType;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/HomeActivity$BooksViewType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->$VALUES:[Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    return-object v0
.end method
