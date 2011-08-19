.class public final enum Lcom/google/android/feeds/core/provider/FeedStatus;
.super Ljava/lang/Enum;
.source "FeedStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/feeds/core/provider/FeedStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/feeds/core/provider/FeedStatus; = null

.field public static final enum ERROR:Lcom/google/android/feeds/core/provider/FeedStatus; = null

.field public static final EXTRA_CURSOR_STATUS:Ljava/lang/String; = "com.google.android.feeds.cursor.extra.CURSOR_STATUS"

.field public static final enum INIT:Lcom/google/android/feeds/core/provider/FeedStatus;

.field public static final enum LOADED:Lcom/google/android/feeds/core/provider/FeedStatus;

.field public static final enum LOADING:Lcom/google/android/feeds/core/provider/FeedStatus;

.field public static final enum REQUERYING:Lcom/google/android/feeds/core/provider/FeedStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedStatus;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/feeds/core/provider/FeedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedStatus;->INIT:Lcom/google/android/feeds/core/provider/FeedStatus;

    .line 33
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedStatus;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/feeds/core/provider/FeedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADING:Lcom/google/android/feeds/core/provider/FeedStatus;

    .line 38
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedStatus;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/feeds/core/provider/FeedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADED:Lcom/google/android/feeds/core/provider/FeedStatus;

    .line 42
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedStatus;

    const-string v1, "REQUERYING"

    invoke-direct {v0, v1, v5}, Lcom/google/android/feeds/core/provider/FeedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedStatus;->REQUERYING:Lcom/google/android/feeds/core/provider/FeedStatus;

    .line 46
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/android/feeds/core/provider/FeedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedStatus;->ERROR:Lcom/google/android/feeds/core/provider/FeedStatus;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/feeds/core/provider/FeedStatus;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->INIT:Lcom/google/android/feeds/core/provider/FeedStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADING:Lcom/google/android/feeds/core/provider/FeedStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADED:Lcom/google/android/feeds/core/provider/FeedStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->REQUERYING:Lcom/google/android/feeds/core/provider/FeedStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->ERROR:Lcom/google/android/feeds/core/provider/FeedStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedStatus;->$VALUES:[Lcom/google/android/feeds/core/provider/FeedStatus;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static readFrom(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 90
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, extras:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v1

    return-object v1
.end method

.method public static readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedStatus;
    .locals 2
    .parameter "extras"

    .prologue
    .line 71
    const-string v1, "com.google.android.feeds.cursor.extra.CURSOR_STATUS"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 73
    invoke-static {v0}, Lcom/google/android/feeds/core/provider/FeedStatus;->valueOf(Ljava/lang/String;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADED:Lcom/google/android/feeds/core/provider/FeedStatus;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/feeds/core/provider/FeedStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/feeds/core/provider/FeedStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/android/feeds/core/provider/FeedStatus;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/feeds/core/provider/FeedStatus;->$VALUES:[Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-virtual {v0}, [Lcom/google/android/feeds/core/provider/FeedStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/feeds/core/provider/FeedStatus;

    return-object v0
.end method


# virtual methods
.method public writeTo(Landroid/os/Bundle;)V
    .locals 2
    .parameter "extras"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/feeds/core/provider/FeedStatus;->name()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, value:Ljava/lang/String;
    const-string v1, "com.google.android.feeds.cursor.extra.CURSOR_STATUS"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
