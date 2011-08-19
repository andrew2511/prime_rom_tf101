.class Lcom/google/android/street/Renderer$Message;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Message"
.end annotation


# instance fields
.field arg1:I

.field arg2:I

.field next:Lcom/google/android/street/Renderer$Message;

.field obj:Ljava/lang/Object;

.field what:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    return-void
.end method


# virtual methods
.method set(IIILjava/lang/Object;)V
    .locals 0
    .parameter "whatIn"
    .parameter "arg1In"
    .parameter "arg2In"
    .parameter "objIn"

    .prologue
    .line 205
    iput p1, p0, Lcom/google/android/street/Renderer$Message;->what:I

    .line 206
    iput p2, p0, Lcom/google/android/street/Renderer$Message;->arg1:I

    .line 207
    iput p3, p0, Lcom/google/android/street/Renderer$Message;->arg2:I

    .line 208
    iput-object p4, p0, Lcom/google/android/street/Renderer$Message;->obj:Ljava/lang/Object;

    .line 209
    return-void
.end method
