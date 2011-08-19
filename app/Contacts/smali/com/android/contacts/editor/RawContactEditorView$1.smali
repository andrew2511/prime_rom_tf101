.class Lcom/android/contacts/editor/RawContactEditorView$1;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/RawContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-static {v0}, Lcom/android/contacts/editor/RawContactEditorView;->access$000(Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 149
    return-void
.end method
