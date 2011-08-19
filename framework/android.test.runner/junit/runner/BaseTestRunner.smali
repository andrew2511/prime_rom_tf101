.class public abstract Ljunit/runner/BaseTestRunner;
.super Ljava/lang/Object;
.source "BaseTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# static fields
.field public static final SUITE_METHODNAME:Ljava/lang/String; = "suite"

.field private static fPreferences:Ljava/util/Properties;

.field static fgFilterStack:Z

.field static fgMaxMessageLength:I


# instance fields
.field fLoading:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    const/16 v0, 0x1f4

    sput v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    .line 323
    const-string v0, "maxmessage"

    sget v1, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    invoke-static {v0, v1}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    .line 324
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    return-void
.end method

.method static filterLine(Ljava/lang/String;)Z
    .registers 7
    .parameter "line"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 305
    const/16 v2, 0x8

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "junit.framework.TestCase"

    aput-object v2, v1, v4

    const-string v2, "junit.framework.TestResult"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "junit.framework.TestSuite"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "junit.framework.Assert."

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "junit.swingui.TestRunner"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "junit.awtui.TestRunner"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "junit.textui.TestRunner"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "java.lang.reflect.Method.invoke("

    aput-object v3, v1, v2

    .line 315
    .local v1, patterns:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    array-length v2, v1

    if-ge v0, v2, :cond_3d

    .line 316
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3a

    move v2, v5

    .line 319
    :goto_39
    return v2

    .line 315
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3d
    move v2, v4

    .line 319
    goto :goto_39
.end method

.method public static getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "stack"

    .prologue
    .line 277
    invoke-static {}, Ljunit/runner/BaseTestRunner;->showStackRaw()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, p0

    .line 297
    :goto_7
    return-object v6

    .line 280
    :cond_8
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 281
    .local v5, sw:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 282
    .local v3, pw:Ljava/io/PrintWriter;
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 285
    .local v4, sr:Ljava/io/StringReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v6, 0x3e8

    invoke-direct {v1, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 290
    .local v1, br:Ljava/io/BufferedReader;
    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_32

    .line 291
    invoke-static {v2}, Ljunit/runner/BaseTestRunner;->filterLine(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 292
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_2e

    goto :goto_1e

    .line 294
    .end local v2           #line:Ljava/lang/String;
    :catch_2e
    move-exception v6

    move-object v0, v6

    .local v0, IOException:Ljava/lang/Exception;
    move-object v6, p0

    .line 295
    goto :goto_7

    .line 297
    .end local v0           #IOException:Ljava/lang/Exception;
    .restart local v2       #line:Ljava/lang/String;
    :cond_32
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7
.end method

.method public static getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .parameter "t"

    .prologue
    .line 265
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 266
    .local v1, stringWriter:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 267
    .local v3, writer:Ljava/io/PrintWriter;
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 268
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 269
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, trace:Ljava/lang/String;
    invoke-static {v2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getPreference(Ljava/lang/String;I)I
    .registers 6
    .parameter "key"
    .parameter "dflt"

    .prologue
    .line 240
    invoke-static {p0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, value:Ljava/lang/String;
    move v0, p1

    .line 242
    .local v0, intValue:I
    if-nez v2, :cond_9

    move v1, v0

    .line 248
    .end local v0           #intValue:I
    .local v1, intValue:I
    :goto_8
    return v1

    .line 245
    .end local v1           #intValue:I
    .restart local v0       #intValue:I
    :cond_9
    :try_start_9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_f

    move-result v0

    :goto_d
    move v1, v0

    .line 248
    .end local v0           #intValue:I
    .restart local v1       #intValue:I
    goto :goto_8

    .line 246
    .end local v1           #intValue:I
    .restart local v0       #intValue:I
    :catch_f
    move-exception v3

    goto :goto_d
.end method

.method public static getPreference(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "key"

    .prologue
    .line 236
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getPreferences()Ljava/util/Properties;
    .registers 3

    .prologue
    .line 33
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    if-nez v0, :cond_20

    .line 34
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    .line 35
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    const-string v1, "loading"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    const-string v1, "filterstack"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Ljunit/runner/BaseTestRunner;->readPreferences()V

    .line 39
    :cond_20
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    return-object v0
.end method

.method private static getPreferencesFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 216
    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, home:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "junit.properties"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static inVAJava()Z
    .registers 2

    .prologue
    .line 253
    :try_start_0
    const-string v1, "com.ibm.uvm.tools.DebugSupport"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 258
    const/4 v1, 0x1

    :goto_6
    return v1

    .line 255
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 256
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method private static readPreferences()V
    .registers 5

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 223
    .local v1, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferencesFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_1f

    .line 224
    .end local v1           #is:Ljava/io/InputStream;
    .local v2, is:Ljava/io/InputStream;
    :try_start_a
    new-instance v3, Ljava/util/Properties;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    invoke-static {v3}, Ljunit/runner/BaseTestRunner;->setPreferences(Ljava/util/Properties;)V

    .line 225
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_29

    move-object v1, v2

    .line 233
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_1e
    :goto_1e
    return-void

    .line 226
    :catch_1f
    move-exception v3

    move-object v0, v3

    .line 228
    .local v0, e:Ljava/io/IOException;
    :goto_21
    if-eqz v1, :cond_1e

    .line 229
    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_1e

    .line 230
    :catch_27
    move-exception v3

    goto :goto_1e

    .line 226
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_29
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_21
.end method

.method public static savePreferences()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferencesFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 45
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_9
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 47
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 49
    return-void

    .line 47
    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v1
.end method

.method protected static setPreferences(Ljava/util/Properties;)V
    .registers 1
    .parameter "preferences"

    .prologue
    .line 29
    sput-object p0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    .line 30
    return-void
.end method

.method protected static showStackRaw()Z
    .registers 2

    .prologue
    .line 301
    const-string v0, "filterstack"

    invoke-static {v0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static truncate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "s"

    .prologue
    .line 178
    sget v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    if-le v0, v1, :cond_27

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    sget v2, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 180
    :cond_27
    return-object p0
.end method


# virtual methods
.method public declared-synchronized addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "test"
    .parameter "t"

    .prologue
    .line 60
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0, p1, p2}, Ljunit/runner/BaseTestRunner;->testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 61
    monitor-exit p0

    return-void

    .line 60
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 4
    .parameter "test"
    .parameter "t"

    .prologue
    .line 64
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {p0, v0, p1, p2}, Ljunit/runner/BaseTestRunner;->testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 65
    monitor-exit p0

    return-void

    .line 64
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clearStatus()V
    .registers 1

    .prologue
    .line 200
    return-void
.end method

.method public elapsedTimeAsString(J)Ljava/lang/String;
    .registers 8
    .parameter "runTime"

    .prologue
    .line 132
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    long-to-double v1, p1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized endTest(Ljunit/framework/Test;)V
    .registers 3
    .parameter "test"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->testEnded(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public extractClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "className"

    .prologue
    .line 169
    const-string v0, "Default package for"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 170
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_14
    return-object v0

    :cond_15
    move-object v0, p1

    goto :goto_14
.end method

.method public getLoader()Ljunit/runner/TestSuiteLoader;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->useReloadingTestSuiteLoader()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 207
    new-instance v0, Ljunit/runner/ReloadingTestSuiteLoader;

    invoke-direct {v0}, Ljunit/runner/ReloadingTestSuiteLoader;-><init>()V

    .line 208
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljunit/runner/StandardTestSuiteLoader;

    invoke-direct {v0}, Ljunit/runner/StandardTestSuiteLoader;-><init>()V

    goto :goto_b
.end method

.method public getTest(Ljava/lang/String;)Ljunit/framework/Test;
    .registers 10
    .parameter "suiteClassName"

    .prologue
    const/4 v7, 0x0

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_c

    .line 81
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    move-object v5, v7

    .line 125
    :goto_b
    return-object v5

    .line 84
    :cond_c
    const/4 v4, 0x0

    .line 86
    .local v4, testClass:Ljava/lang/Class;
    :try_start_d
    invoke-virtual {p0, p1}, Ljunit/runner/BaseTestRunner;->loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_10} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_52

    move-result-object v4

    .line 97
    const/4 v2, 0x0

    .line 99
    .local v2, suiteMethod:Ljava/lang/reflect/Method;
    :try_start_12
    const-string v5, "suite"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_6f

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_7a

    .line 106
    const-string v5, "Suite() method must be static"

    invoke-virtual {p0, v5}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    move-object v5, v7

    .line 107
    goto :goto_b

    .line 87
    .end local v2           #suiteMethod:Ljava/lang/reflect/Method;
    :catch_2c
    move-exception v1

    .line 88
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, clazz:Ljava/lang/String;
    if-nez v0, :cond_34

    .line 90
    move-object v0, p1

    .line 91
    :cond_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class not found \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    move-object v5, v7

    .line 92
    goto :goto_b

    .line 93
    .end local v0           #clazz:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_52
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    move-object v5, v7

    .line 95
    goto :goto_b

    .line 100
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #suiteMethod:Ljava/lang/reflect/Method;
    :catch_6f
    move-exception v5

    move-object v1, v5

    .line 102
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    .line 103
    new-instance v5, Ljunit/framework/TestSuite;

    invoke-direct {v5, v4}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    goto :goto_b

    .line 109
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7a
    const/4 v3, 0x0

    .line 111
    .local v3, test:Ljunit/framework/Test;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_7d
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #test:Ljunit/framework/Test;
    check-cast v3, Ljunit/framework/Test;
    :try_end_85
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7d .. :try_end_85} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_7d .. :try_end_85} :catch_ac

    .line 112
    .restart local v3       #test:Ljunit/framework/Test;
    if-nez v3, :cond_cb

    move-object v5, v3

    .line 113
    goto :goto_b

    .line 115
    .end local v3           #test:Ljunit/framework/Test;
    :catch_89
    move-exception v5

    move-object v1, v5

    .line 116
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to invoke suite():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    move-object v5, v7

    .line 117
    goto/16 :goto_b

    .line 119
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_ac
    move-exception v5

    move-object v1, v5

    .line 120
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to invoke suite():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    move-object v5, v7

    .line 121
    goto/16 :goto_b

    .line 124
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .restart local v3       #test:Ljunit/framework/Test;
    :cond_cb
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    move-object v5, v3

    .line 125
    goto/16 :goto_b
.end method

.method protected loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "suiteClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->getLoader()Ljunit/runner/TestSuiteLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Ljunit/runner/TestSuiteLoader;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected processArguments([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, suiteName:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_48

    .line 142
    aget-object v2, p1, v0

    const-string v3, "-noloading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 143
    invoke-virtual {p0, v4}, Ljunit/runner/BaseTestRunner;->setLoading(Z)V

    .line 141
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 144
    :cond_16
    aget-object v2, p1, v0

    const-string v3, "-nofilterstack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 145
    sput-boolean v4, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    goto :goto_13

    .line 146
    :cond_23
    aget-object v2, p1, v0

    const-string v3, "-c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 147
    array-length v2, p1

    add-int/lit8 v3, v0, 0x1

    if-le v2, v3, :cond_3d

    .line 148
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Ljunit/runner/BaseTestRunner;->extractClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 150
    :cond_3d
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Missing Test class name"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3a

    .line 153
    :cond_45
    aget-object v1, p1, v0

    goto :goto_13

    .line 156
    :cond_48
    return-object v1
.end method

.method protected abstract runFailed(Ljava/lang/String;)V
.end method

.method public setLoading(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 163
    iput-boolean p1, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    .line 164
    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 52
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public declared-synchronized startTest(Ljunit/framework/Test;)V
    .registers 3
    .parameter "test"

    .prologue
    .line 25
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->testStarted(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 26
    monitor-exit p0

    return-void

    .line 25
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract testEnded(Ljava/lang/String;)V
.end method

.method public abstract testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
.end method

.method public abstract testStarted(Ljava/lang/String;)V
.end method

.method protected useReloadingTestSuiteLoader()Z
    .registers 3

    .prologue
    .line 212
    const-string v0, "loading"

    invoke-static {v0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Ljunit/runner/BaseTestRunner;->inVAJava()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
