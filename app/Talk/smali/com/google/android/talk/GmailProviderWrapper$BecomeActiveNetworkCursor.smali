.class public final enum Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;
.super Ljava/lang/Enum;
.source "GmailProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/GmailProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BecomeActiveNetworkCursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

.field public static final enum NO:Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

.field public static final enum YES:Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;->YES:Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    .line 274
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;->NO:Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    .line 261
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    sget-object v1, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;->YES:Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;->NO:Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;->$VALUES:[Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

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
    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;
    .locals 1
    .parameter

    .prologue
    .line 261
    const-class v0, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    return-object p0
.end method

.method public static values()[Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;->$VALUES:[Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    invoke-virtual {v0}, [Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    return-object v0
.end method
