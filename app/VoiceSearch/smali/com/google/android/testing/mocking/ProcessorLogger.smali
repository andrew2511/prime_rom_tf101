.class Lcom/google/android/testing/mocking/ProcessorLogger;
.super Ljava/lang/Object;
.source "ProcessorLogger.java"


# instance fields
.field private final logFile:Ljava/io/OutputStream;

.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/testing/mocking/ProcessorLogger;->logFile:Ljava/io/OutputStream;

    .line 43
    iput-object p2, p0, Lcom/google/android/testing/mocking/ProcessorLogger;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/testing/mocking/ProcessorLogger;->openLogFile(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/testing/mocking/ProcessorLogger;->logFile:Ljava/io/OutputStream;

    .line 48
    iput-object p2, p0, Lcom/google/android/testing/mocking/ProcessorLogger;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 49
    return-void
.end method


# virtual methods
.method close()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/testing/mocking/ProcessorLogger;->logFile:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/android/testing/mocking/ProcessorLogger;->logFile:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method openLogFile(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 3
    .parameter

    .prologue
    .line 84
    if-eqz p1, :cond_1

    .line 85
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 89
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 94
    :goto_0
    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/testing/mocking/ProcessorLogger;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/Throwable;)V

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/testing/mocking/ProcessorLogger;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/testing/mocking/ProcessorLogger;->logFile:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/android/testing/mocking/ProcessorLogger;->logFile:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/tools/Diagnostic$Kind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    iget-object v1, p0, Lcom/google/android/testing/mocking/ProcessorLogger;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v1

    sget-object v2, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException logging to file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 77
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/testing/mocking/ProcessorLogger;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method reportClasspathError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 52
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/testing/mocking/ProcessorLogger;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;)V

    .line 53
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/testing/mocking/ProcessorLogger;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/Throwable;)V

    .line 54
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v1, "Known Classpath: "

    invoke-virtual {p0, v0, v1}, Lcom/google/android/testing/mocking/ProcessorLogger;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ljava/net/URLClassLoader;

    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v0

    .line 56
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 57
    sget-object v4, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/google/android/testing/mocking/ProcessorLogger;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;)V

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method
