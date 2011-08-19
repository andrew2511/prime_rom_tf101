.class public final Lcom/amazon/topaz/internal/layout/GoBackCallback;
.super Lcom/amazon/topaz/Callback;
.source "GoBackCallback.java"


# static fields
.field private static LABEL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "Go Back"

    sput-object v0, Lcom/amazon/topaz/internal/layout/GoBackCallback;->LABEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/amazon/topaz/internal/layout/GoBackCallback;->LABEL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/topaz/Callback;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public run(Lcom/amazon/topaz/Viewer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/topaz/Viewer;->goBack()Z
    :try_end_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :goto_0
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    return-object v0

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
