.class Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
.super Ljava/lang/Object;
.source "SessionStanzaSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/SessionStanzaSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IQ"
.end annotation


# instance fields
.field extension:Ljava/lang/String;

.field from:Ljava/lang/String;

.field id:Ljava/lang/String;

.field to:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->id:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->from:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->to:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->type:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->extension:Ljava/lang/String;

    .line 82
    return-void
.end method
