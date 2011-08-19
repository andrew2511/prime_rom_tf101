.class Lcom/android/deskclock/AlarmKlaxon$2;
.super Landroid/telephony/PhoneStateListener;
.source "AlarmKlaxon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmKlaxon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "ignored"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$100(Lcom/android/deskclock/AlarmKlaxon;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-static {v1}, Lcom/android/deskclock/AlarmKlaxon;->access$200(Lcom/android/deskclock/AlarmKlaxon;)Lcom/android/deskclock/Alarm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmKlaxon;->access$000(Lcom/android/deskclock/AlarmKlaxon;Lcom/android/deskclock/Alarm;)V

    .line 82
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-virtual {v0}, Lcom/android/deskclock/AlarmKlaxon;->stopSelf()V

    .line 84
    :cond_0
    return-void
.end method
