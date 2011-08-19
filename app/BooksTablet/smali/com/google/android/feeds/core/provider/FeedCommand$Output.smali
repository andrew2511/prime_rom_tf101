.class public final enum Lcom/google/android/feeds/core/provider/FeedCommand$Output;
.super Ljava/lang/Enum;
.source "FeedCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feeds/core/provider/FeedCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Output"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/feeds/core/provider/FeedCommand$Output;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/feeds/core/provider/FeedCommand$Output;

.field public static final enum URI:Lcom/google/android/feeds/core/provider/FeedCommand$Output;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Output;

    const-string v1, "URI"

    invoke-direct {v0, v1, v2}, Lcom/google/android/feeds/core/provider/FeedCommand$Output;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Output;->URI:Lcom/google/android/feeds/core/provider/FeedCommand$Output;

    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/feeds/core/provider/FeedCommand$Output;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Output;->URI:Lcom/google/android/feeds/core/provider/FeedCommand$Output;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Output;->$VALUES:[Lcom/google/android/feeds/core/provider/FeedCommand$Output;

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
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/feeds/core/provider/FeedCommand$Output;
    .locals 1
    .parameter "name"

    .prologue
    .line 185
    const-class v0, Lcom/google/android/feeds/core/provider/FeedCommand$Output;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/feeds/core/provider/FeedCommand$Output;

    return-object p0
.end method

.method public static values()[Lcom/google/android/feeds/core/provider/FeedCommand$Output;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Output;->$VALUES:[Lcom/google/android/feeds/core/provider/FeedCommand$Output;

    invoke-virtual {v0}, [Lcom/google/android/feeds/core/provider/FeedCommand$Output;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/feeds/core/provider/FeedCommand$Output;

    return-object v0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.google.android.feeds.respond.output.extra.OUTPUT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/feeds/core/provider/FeedCommand$Output;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
