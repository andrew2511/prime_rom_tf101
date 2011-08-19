.class final enum Lcom/google/android/gm/HtmlConversationActivity$NextOperation;
.super Ljava/lang/Enum;
.source "HtmlConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NextOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/HtmlConversationActivity$NextOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

.field public static final enum ARCHIVE:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

.field public static final enum DELETE:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

.field public static final enum MUTE:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

.field public static final enum NOTHING:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

.field public static final enum SPAM:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    new-instance v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    const-string v1, "NOTHING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->NOTHING:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    .line 125
    new-instance v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    const-string v1, "ARCHIVE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->ARCHIVE:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    .line 126
    new-instance v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->DELETE:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    .line 127
    new-instance v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    const-string v1, "MUTE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->MUTE:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    .line 128
    new-instance v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    const-string v1, "SPAM"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->SPAM:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    .line 123
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    sget-object v1, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->NOTHING:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->ARCHIVE:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->DELETE:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->MUTE:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->SPAM:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->$VALUES:[Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

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
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationActivity$NextOperation;
    .locals 1
    .parameter

    .prologue
    .line 123
    const-class v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gm/HtmlConversationActivity$NextOperation;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->$VALUES:[Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    invoke-virtual {v0}, [Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    return-object v0
.end method
