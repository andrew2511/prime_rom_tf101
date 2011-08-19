.class public final enum Lcom/google/android/feeds/core/provider/FeedCommand$Response;
.super Ljava/lang/Enum;
.source "FeedCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feeds/core/provider/FeedCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/feeds/core/provider/FeedCommand$Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/feeds/core/provider/FeedCommand$Response;

.field public static final enum ILLEGAL_ARGUMENT:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

.field public static final enum ILLEGAL_STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

.field public static final enum OK:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

.field public static final enum UNSUPPORTED_OPERATION:Lcom/google/android/feeds/core/provider/FeedCommand$Response;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/feeds/core/provider/FeedCommand$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->OK:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 93
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    const-string v1, "ILLEGAL_ARGUMENT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/feeds/core/provider/FeedCommand$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->ILLEGAL_ARGUMENT:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 97
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    const-string v1, "ILLEGAL_STATE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/feeds/core/provider/FeedCommand$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->ILLEGAL_STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 101
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    const-string v1, "UNSUPPORTED_OPERATION"

    invoke-direct {v0, v1, v5}, Lcom/google/android/feeds/core/provider/FeedCommand$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->UNSUPPORTED_OPERATION:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->OK:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->ILLEGAL_ARGUMENT:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->ILLEGAL_STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->UNSUPPORTED_OPERATION:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->$VALUES:[Lcom/google/android/feeds/core/provider/FeedCommand$Response;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 118
    const-string v0, "com.google.android.feeds.cursor.respond.output.extra.COMMAND_RESPONSE"

    .line 119
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, response:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 121
    invoke-static {v1}, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->valueOf(Ljava/lang/String;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    move-result-object v2

    .line 125
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->UNSUPPORTED_OPERATION:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .locals 1
    .parameter "name"

    .prologue
    .line 84
    const-class v0, Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    return-object p0
.end method

.method public static values()[Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->$VALUES:[Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    invoke-virtual {v0}, [Lcom/google/android/feeds/core/provider/FeedCommand$Response;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    return-object v0
.end method


# virtual methods
.method public writeTo(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 108
    const-string v0, "com.google.android.feeds.cursor.respond.output.extra.COMMAND_RESPONSE"

    invoke-virtual {p0}, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
