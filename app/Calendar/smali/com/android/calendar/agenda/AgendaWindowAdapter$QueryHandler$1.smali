.class Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1100(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    .line 806
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1100(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    goto :goto_0
.end method
