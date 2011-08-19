.class Landroid/util/ShellCommand$StreamChomper;
.super Ljava/lang/Thread;
.source "ShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/ShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamChomper"
.end annotation


# instance fields
.field private mIs:Ljava/io/InputStream;

.field private mOutput:Ljava/lang/StringBuilder;

.field final synthetic this$0:Landroid/util/ShellCommand;


# direct methods
.method public constructor <init>(Landroid/util/ShellCommand;Ljava/io/InputStream;)V
    .registers 4
    .parameter
    .parameter "is"

    .prologue
    .line 29
    iput-object p1, p0, Landroid/util/ShellCommand$StreamChomper;->this$0:Landroid/util/ShellCommand;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/util/ShellCommand$StreamChomper;->mOutput:Ljava/lang/StringBuilder;

    .line 30
    iput-object p2, p0, Landroid/util/ShellCommand$StreamChomper;->mIs:Ljava/io/InputStream;

    .line 31
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .registers 4

    .prologue
    .line 58
    iget-object v1, p0, Landroid/util/ShellCommand$StreamChomper;->mOutput:Ljava/lang/StringBuilder;

    monitor-enter v1

    .line 59
    :try_start_3
    iget-object v2, p0, Landroid/util/ShellCommand$StreamChomper;->mOutput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, retval:Ljava/lang/String;
    monitor-exit v1

    .line 61
    return-object v0

    .line 60
    .end local v0           #retval:Ljava/lang/String;
    :catchall_b
    move-exception v2

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v2
.end method

.method public run()V
    .registers 8

    .prologue
    .line 35
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v4, p0, Landroid/util/ShellCommand$StreamChomper;->mIs:Ljava/io/InputStream;

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 38
    .local v2, isr:Ljava/io/InputStreamReader;
    :try_start_7
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v0, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_2d

    .line 40
    .local v0, br:Ljava/io/BufferedReader;
    :goto_e
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_3d

    .line 41
    iget-object v4, p0, Landroid/util/ShellCommand$StreamChomper;->mOutput:Ljava/lang/StringBuilder;

    monitor-enter v4
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_28

    .line 42
    :try_start_17
    iget-object v5, p0, Landroid/util/ShellCommand$StreamChomper;->mOutput:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v5, p0, Landroid/util/ShellCommand$StreamChomper;->mOutput:Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    monitor-exit v4

    goto :goto_e

    :catchall_25
    move-exception v5

    monitor-exit v4
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_25

    :try_start_27
    throw v5
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 47
    .end local v3           #line:Ljava/lang/String;
    :catchall_28
    move-exception v4

    :try_start_29
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v4
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d

    .line 49
    .end local v0           #br:Ljava/io/BufferedReader;
    :catch_2d
    move-exception v4

    move-object v1, v4

    .line 50
    .local v1, e:Ljava/io/IOException;
    iget-object v4, p0, Landroid/util/ShellCommand$StreamChomper;->mOutput:Ljava/lang/StringBuilder;

    monitor-enter v4

    .line 51
    :try_start_32
    iget-object v5, p0, Landroid/util/ShellCommand$StreamChomper;->mOutput:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_41

    .line 54
    .end local v1           #e:Ljava/io/IOException;
    :goto_3c
    return-void

    .line 47
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_3d
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_2d

    goto :goto_3c

    .line 52
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v1       #e:Ljava/io/IOException;
    :catchall_41
    move-exception v5

    :try_start_42
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v5
.end method
