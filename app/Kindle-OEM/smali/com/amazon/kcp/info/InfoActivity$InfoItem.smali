.class final enum Lcom/amazon/kcp/info/InfoActivity$InfoItem;
.super Ljava/lang/Enum;
.source "InfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/info/InfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InfoItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/info/InfoActivity$InfoItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/info/InfoActivity$InfoItem;

.field public static final enum ABOUT:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

.field public static final enum FUTURE_IMPROVEMENTS:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

.field public static final enum KINDLE:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

.field public static final enum LEGAL_NOTICES:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

.field public static final enum TERMS_OF_USE:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

.field public static final enum WHATS_NEW:Lcom/amazon/kcp/info/InfoActivity$InfoItem;


# instance fields
.field public final textId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    new-instance v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    const-string v1, "ABOUT"

    const v2, 0x7f0b0082

    invoke-direct {v0, v1, v4, v2}, Lcom/amazon/kcp/info/InfoActivity$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->ABOUT:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    .line 45
    new-instance v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    const-string v1, "WHATS_NEW"

    const v2, 0x7f0b0083

    invoke-direct {v0, v1, v5, v2}, Lcom/amazon/kcp/info/InfoActivity$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->WHATS_NEW:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    .line 46
    new-instance v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    const-string v1, "FUTURE_IMPROVEMENTS"

    const v2, 0x7f0b0084

    invoke-direct {v0, v1, v6, v2}, Lcom/amazon/kcp/info/InfoActivity$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->FUTURE_IMPROVEMENTS:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    .line 47
    new-instance v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    const-string v1, "KINDLE"

    const v2, 0x7f0b0085

    invoke-direct {v0, v1, v7, v2}, Lcom/amazon/kcp/info/InfoActivity$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->KINDLE:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    .line 48
    new-instance v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    const-string v1, "TERMS_OF_USE"

    const v2, 0x7f0b0086

    invoke-direct {v0, v1, v8, v2}, Lcom/amazon/kcp/info/InfoActivity$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->TERMS_OF_USE:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    .line 49
    new-instance v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    const-string v1, "LEGAL_NOTICES"

    const/4 v2, 0x5

    const v3, 0x7f0b0087

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/info/InfoActivity$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->LEGAL_NOTICES:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    sget-object v1, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->ABOUT:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->WHATS_NEW:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->FUTURE_IMPROVEMENTS:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->KINDLE:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->TERMS_OF_USE:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->LEGAL_NOTICES:Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->$VALUES:[Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "textId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->textId:I

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/info/InfoActivity$InfoItem;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/info/InfoActivity$InfoItem;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->$VALUES:[Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    invoke-virtual {v0}, [Lcom/amazon/kcp/info/InfoActivity$InfoItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    return-object v0
.end method
