.class public final enum Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;
.super Ljava/lang/Enum;
.source "IAndroidReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/IAndroidReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartPage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

.field public static final enum BEGINNING:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

.field public static final enum DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

.field public static final enum LOCATION:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

.field public static final enum LPR:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 36
    new-instance v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    const-string v1, "LPR"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->LPR:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 41
    new-instance v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    const-string v1, "BEGINNING"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->BEGINNING:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 46
    new-instance v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v5}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->LOCATION:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->LPR:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->BEGINNING:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->LOCATION:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->$VALUES:[Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->$VALUES:[Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    return-object v0
.end method
