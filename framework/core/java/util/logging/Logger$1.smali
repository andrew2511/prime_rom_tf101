.class final Ljava/util/logging/Logger$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ldalvik/system/DalvikLogHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public publish(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 7
    .parameter "source"
    .parameter "tag"
    .parameter "level"
    .parameter "message"

    .prologue
    .line 88
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p3, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 89
    .local v0, record:Ljava/util/logging/LogRecord;
    #getter for: Ljava/util/logging/Logger;->name:Ljava/lang/String;
    invoke-static {p1}, Ljava/util/logging/Logger;->access$000(Ljava/util/logging/Logger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 90
    #calls: Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V
    invoke-static {p1, v0}, Ljava/util/logging/Logger;->access$100(Ljava/util/logging/Logger;Ljava/util/logging/LogRecord;)V

    .line 91
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 92
    return-void
.end method
