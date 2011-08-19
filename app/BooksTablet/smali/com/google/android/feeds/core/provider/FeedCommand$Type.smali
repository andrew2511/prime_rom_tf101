.class public final enum Lcom/google/android/feeds/core/provider/FeedCommand$Type;
.super Ljava/lang/Enum;
.source "FeedCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feeds/core/provider/FeedCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/feeds/core/provider/FeedCommand$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/feeds/core/provider/FeedCommand$Type;

.field public static final enum QUERY:Lcom/google/android/feeds/core/provider/FeedCommand$Type;

.field public static final enum SAVE:Lcom/google/android/feeds/core/provider/FeedCommand$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/feeds/core/provider/FeedCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->QUERY:Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    .line 50
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    const-string v1, "SAVE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/feeds/core/provider/FeedCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->SAVE:Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->QUERY:Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->SAVE:Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->$VALUES:[Lcom/google/android/feeds/core/provider/FeedCommand$Type;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 72
    const-string v1, "com.google.android.feeds.cursor.respond.input.extra.COMMAND"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, command:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 74
    invoke-static {v0}, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->valueOf(Ljava/lang/String;)Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    move-result-object v1

    return-object v1

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No command specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->$VALUES:[Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    invoke-virtual {v0}, [Lcom/google/android/feeds/core/provider/FeedCommand$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    return-object v0
.end method


# virtual methods
.method public writeTo(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 59
    const-string v0, "com.google.android.feeds.cursor.respond.input.extra.COMMAND"

    invoke-virtual {p0}, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
