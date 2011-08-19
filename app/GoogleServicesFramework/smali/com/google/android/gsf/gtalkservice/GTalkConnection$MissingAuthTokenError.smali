.class Lcom/google/android/gsf/gtalkservice/GTalkConnection$MissingAuthTokenError;
.super Lorg/jivesoftware/smack/packet/XMPPError;
.source "GTalkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/GTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MissingAuthTokenError"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "code"
    .parameter "message"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$MissingAuthTokenError;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    .line 261
    invoke-direct {p0, p2, p3}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(ILjava/lang/String;)V

    .line 262
    return-void
.end method
