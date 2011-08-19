.class Lcom/android/contacts/editor/AggregationSuggestionEngine$1;
.super Landroid/os/Handler;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/AggregationSuggestionEngine;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;->this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;->this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    invoke-virtual {v0, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->deliverNotification(Landroid/database/Cursor;)V

    .line 125
    return-void
.end method
