.class public final enum Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;
.super Ljava/lang/Enum;
.source "IAndroidReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/IAndroidReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenReaderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

.field public static final enum BLOCKING:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

.field public static final enum LOADING_ASYNC:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    const-string v1, "BLOCKING"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    .line 62
    new-instance v0, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    const-string v1, "LOADING_ASYNC"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->$VALUES:[Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;
    .locals 1
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->$VALUES:[Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    return-object v0
.end method
