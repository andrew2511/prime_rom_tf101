.class Lcom/android/calendar/event/EditEventView$1;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventView;->populateTimezone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$1;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$1;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventView;->access$700(Lcom/android/calendar/event/EditEventView;)V

    .line 341
    return-void
.end method
