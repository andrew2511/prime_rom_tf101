.class Lcom/google/android/music/MusicUtils$LogEntry;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogEntry"
.end annotation


# instance fields
.field count:J

.field item:Ljava/lang/Object;

.field time:J


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-object p1, p0, Lcom/google/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->time:J

    .line 751
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->count:J

    .line 752
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 755
    invoke-static {}, Lcom/google/android/music/MusicUtils;->access$100()Landroid/text/format/Time;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/MusicUtils$LogEntry;->time:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/music/MusicUtils;->access$100()Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    iget-wide v0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->count:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/MusicUtils$LogEntry;->count:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occurrences) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 761
    iget-object p0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 765
    :goto_0
    return-void

    .line 763
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method
