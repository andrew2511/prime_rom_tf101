.class public final enum Lcom/google/android/feeds/core/provider/FeedCommand$Argument;
.super Ljava/lang/Enum;
.source "FeedCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feeds/core/provider/FeedCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Argument"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/feeds/core/provider/FeedCommand$Argument;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

.field public static final enum APPEND:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

.field public static final enum ASYNC:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

.field public static final enum MAX_AGE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

.field public static final enum MIN_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

.field public static final enum NOTIFY_FAILURE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

.field public static final enum ROW_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

.field public static final enum STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    const-string v1, "ASYNC"

    invoke-direct {v0, v1, v3}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ASYNC:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    .line 144
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    const-string v1, "APPEND"

    invoke-direct {v0, v1, v4}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->APPEND:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    .line 150
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    const-string v1, "MIN_COUNT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->MIN_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    .line 156
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    const-string v1, "MAX_AGE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->MAX_AGE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    .line 162
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    const-string v1, "NOTIFY_FAILURE"

    invoke-direct {v0, v1, v7}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->NOTIFY_FAILURE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    .line 167
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    const-string v1, "STATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    .line 172
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    const-string v1, "ROW_COUNT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ROW_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    .line 133
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ASYNC:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->APPEND:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->MIN_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->MAX_AGE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->NOTIFY_FAILURE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->ROW_COUNT:Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->$VALUES:[Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/feeds/core/provider/FeedCommand$Argument;
    .locals 1
    .parameter "name"

    .prologue
    .line 133
    const-class v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    return-object p0
.end method

.method public static values()[Lcom/google/android/feeds/core/provider/FeedCommand$Argument;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->$VALUES:[Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    invoke-virtual {v0}, [Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/feeds/core/provider/FeedCommand$Argument;

    return-object v0
.end method


# virtual methods
.method key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.google.android.feeds.respond.input.extra.ARGUMENT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/feeds/core/provider/FeedCommand$Argument;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
