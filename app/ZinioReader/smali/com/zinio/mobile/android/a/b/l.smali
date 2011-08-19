.class public final Lcom/zinio/mobile/android/a/b/l;
.super Lcom/zinio/mobile/android/a/d;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/b;
.implements Lcom/zinio/mobile/android/a/b/m;


# static fields
.field private static b:Lcom/zinio/mobile/android/a/b/l;


# instance fields
.field a:Landroid/os/Handler;

.field private final c:Lcom/zinio/mobile/android/a/b/q;

.field private d:Lcom/zinio/mobile/android/a/b/s;

.field private e:Lcom/zinio/mobile/android/a/b/x;

.field private f:Lcom/zinio/mobile/android/a/b/ab;

.field private g:Lcom/zinio/mobile/android/a/a/j;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/d;-><init>()V

    .line 101
    new-instance v0, Lcom/zinio/mobile/android/a/b/q;

    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/a/b/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    .line 131
    new-instance v0, Lcom/zinio/mobile/android/a/b/g;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/a/b/g;-><init>(Lcom/zinio/mobile/android/a/b/l;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->g:Lcom/zinio/mobile/android/a/a/j;

    .line 275
    new-instance v0, Lcom/zinio/mobile/android/a/b/x;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/a/b/x;-><init>(Lcom/zinio/mobile/android/a/b/l;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->e:Lcom/zinio/mobile/android/a/b/x;

    .line 276
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/l;->e:Lcom/zinio/mobile/android/a/b/x;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.zinio.mobile.android.user.LOG_OUT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/a/j;)Lcom/zinio/mobile/android/a/a/y;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/a/b/l;->f(Lcom/zinio/mobile/android/a/a/j;)Lcom/zinio/mobile/android/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->m()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/b/s;)Lcom/zinio/mobile/android/a/b/s;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    return-object p1
.end method

.method static synthetic a(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/a/b/l;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/zinio/mobile/android/b/a/m;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 757
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 758
    if-eqz p2, :cond_0

    .line 759
    new-instance v1, Lcom/zinio/mobile/android/e/a;

    invoke-direct {v1}, Lcom/zinio/mobile/android/e/a;-><init>()V

    .line 760
    const/4 v2, 0x0

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/e/a;->a([B)V

    .line 762
    new-instance v2, Lcom/zinio/mobile/android/e/d;

    invoke-direct {v2, v0, v1}, Lcom/zinio/mobile/android/e/d;-><init>(Ljava/io/InputStream;Lcom/zinio/mobile/android/e/a;)V

    move-object v0, v2

    .line 764
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 765
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 766
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 767
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 776
    return-void

    .line 768
    :catch_0
    move-exception v0

    .line 769
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 770
    :catch_1
    move-exception v0

    .line 771
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 772
    :catch_2
    move-exception v0

    .line 773
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 774
    :catch_3
    move-exception v0

    .line 775
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/io/File;)Z
    .locals 5
    .parameter

    .prologue
    .line 1085
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1087
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1088
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1089
    invoke-direct {p0, v3}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/io/File;)Z

    .line 1087
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1091
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1095
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static final b()Lcom/zinio/mobile/android/a/b/l;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/zinio/mobile/android/a/b/l;->b:Lcom/zinio/mobile/android/a/b/l;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/zinio/mobile/android/a/b/l;

    invoke-direct {v0}, Lcom/zinio/mobile/android/a/b/l;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/a/b/l;->b:Lcom/zinio/mobile/android/a/b/l;

    .line 304
    :cond_0
    sget-object v0, Lcom/zinio/mobile/android/a/b/l;->b:Lcom/zinio/mobile/android/a/b/l;

    return-object v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/s;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    return-object v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/a/b/l;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/a/b/l;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/zinio/mobile/android/a/b/l;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    return-void
.end method

.method static synthetic d(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/a/j;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->g:Lcom/zinio/mobile/android/a/a/j;

    return-object v0
.end method

.method static synthetic d(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/a/b/l;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/q;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    return-object v0
.end method

.method static synthetic e(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/a/b/l;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized e(Lcom/zinio/mobile/android/a/a/j;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 937
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrieving issue data of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    .line 938
    invoke-static {p1}, Lcom/zinio/mobile/android/a/c;->a(Lcom/zinio/mobile/android/a/a/j;)Ljava/lang/String;

    move-result-object v0

    .line 940
    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 941
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    .line 942
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/zinio/mobile/android/b/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zinio/mobile/android/b/c;

    .line 944
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/l;->g:Lcom/zinio/mobile/android/a/a/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p1, :cond_1

    move v0, v4

    .line 1013
    :goto_0
    monitor-exit p0

    return v0

    .line 949
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    .line 952
    :cond_1
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    .line 953
    new-instance v1, Lcom/zinio/mobile/android/a/a/o;

    invoke-direct {v1}, Lcom/zinio/mobile/android/a/a/o;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    const/4 v2, 0x1

    :try_start_2
    invoke-static {v1, v0, v2}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/b/a/m;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 971
    :try_start_3
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/o;->a()Lcom/zinio/mobile/android/a/a/t;

    move-result-object v6

    .line 974
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/zinio/mobile/android/a/a/t;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/zinio/mobile/android/a/a/t;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 976
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    .line 988
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v3

    .line 989
    if-eqz v3, :cond_3

    .line 990
    invoke-virtual {p1, v6}, Lcom/zinio/mobile/android/a/a/j;->a(Lcom/zinio/mobile/android/a/a/t;)V

    .line 992
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    .line 998
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/q;->a()Lcom/zinio/mobile/android/a/b/q;

    .line 999
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/zinio/mobile/android/a/a/t;->j()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/zinio/mobile/android/a/a/t;->b()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/zinio/mobile/android/a/b/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Z

    .line 1002
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/q;->b()V

    .line 1008
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    move v0, v7

    .line 1009
    goto :goto_0

    .line 962
    :catch_0
    move-exception v0

    .line 965
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/zinio/mobile/android/a/a/j;->a(Z)V

    .line 966
    sget-object v1, Lcom/zinio/mobile/android/a/b/l;->b:Lcom/zinio/mobile/android/a/b/l;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/b/l;->a(Z)V

    .line 967
    new-instance v1, Lcom/zinio/mobile/android/b/g;

    invoke-direct {v1, v0}, Lcom/zinio/mobile/android/b/g;-><init>(Ljava/lang/Throwable;)V

    .line 968
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/b/g;->a(I)V

    .line 969
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 979
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    .line 982
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/io/File;)Z

    .line 984
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    .line 985
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/a/b/l;->e(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v0

    goto/16 :goto_0

    .line 1012
    :cond_3
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v4

    .line 1013
    goto/16 :goto_0
.end method

.method private f(Lcom/zinio/mobile/android/a/a/j;)Lcom/zinio/mobile/android/a/a/y;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Computing view state for issue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    .line 1059
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    .line 1061
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 1063
    iget-object v3, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/a/b/q;->a()Lcom/zinio/mobile/android/a/b/q;

    .line 1066
    iget-object v3, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v3, v0, v1, v2}, Lcom/zinio/mobile/android/a/b/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1067
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1070
    new-instance v1, Lcom/zinio/mobile/android/a/a/y;

    invoke-direct {v1}, Lcom/zinio/mobile/android/a/a/y;-><init>()V

    .line 1077
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1078
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/q;->b()V

    .line 1080
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    .line 1081
    return-object v1

    .line 1072
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1073
    new-instance v1, Lcom/zinio/mobile/android/a/a/y;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_1

    move v5, v6

    :goto_1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/zinio/mobile/android/a/a/y;-><init>(IIFZ)V

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1
.end method

.method static synthetic j()Lcom/zinio/mobile/android/a/b/l;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/zinio/mobile/android/a/b/l;->b:Lcom/zinio/mobile/android/a/b/l;

    return-object v0
.end method

.method private m()Lcom/zinio/mobile/android/a/b/s;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 382
    new-instance v7, Lcom/zinio/mobile/android/a/b/s;

    invoke-direct {v7}, Lcom/zinio/mobile/android/a/b/s;-><init>()V

    .line 383
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    .line 385
    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 443
    :goto_0
    return-object v0

    .line 389
    :cond_0
    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v8

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/q;->a()Lcom/zinio/mobile/android/a/b/q;

    .line 393
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v0, v8}, Lcom/zinio/mobile/android/a/b/q;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 394
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 396
    :cond_1
    new-instance v0, Lcom/zinio/mobile/android/a/b/t;

    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v11

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/zinio/mobile/android/a/b/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 404
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zinio/mobile/android/a/b/t;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 411
    const/16 v1, 0xc

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/a/a/j;->a(J)V

    .line 413
    const/16 v1, 0xd

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->i(I)V

    .line 416
    invoke-virtual {v7, v0}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/j;)V

    .line 418
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v0, v8}, Lcom/zinio/mobile/android/a/b/q;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/zinio/mobile/android/a/b/s;->a(I)V

    .line 431
    invoke-virtual {v7}, Lcom/zinio/mobile/android/a/b/s;->b()V

    .line 432
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 433
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/q;->b()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    move-object v0, v7

    .line 443
    goto/16 :goto_0

    :cond_3
    move v6, v10

    .line 396
    goto :goto_1

    .line 436
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto :goto_2

    .line 439
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto :goto_2
.end method

.method private n()V
    .locals 1

    .prologue
    .line 1223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1224
    return-void
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 457
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/b/l;->i()V

    .line 464
    :cond_2
    invoke-virtual {p1, v4}, Lcom/zinio/mobile/android/a/a/j;->d(Z)V

    .line 465
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/l;->g:Lcom/zinio/mobile/android/a/a/j;

    .line 466
    invoke-virtual {p1, p0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    .line 468
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->N()Z

    move-result v0

    .line 470
    if-nez v0, :cond_3

    .line 471
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/a/b/l;->e(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v0

    .line 474
    :cond_3
    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->P()Z

    move-result v0

    if-nez v0, :cond_6

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrieving TOC for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    invoke-static {p1}, Lcom/zinio/mobile/android/a/c;->b(Lcom/zinio/mobile/android/a/a/j;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    new-instance v0, Lcom/zinio/mobile/android/a/a/d;

    invoke-direct {v0}, Lcom/zinio/mobile/android/a/a/d;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v2, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/b/a/m;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/d;->a()Lcom/zinio/mobile/android/a/a/ab;

    move-result-object v0

    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    invoke-virtual {p1, v0}, Lcom/zinio/mobile/android/a/a/j;->a(Lcom/zinio/mobile/android/a/a/ab;)V

    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/a/b/l;->f(Lcom/zinio/mobile/android/a/a/j;)Lcom/zinio/mobile/android/a/a/y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zinio/mobile/android/a/a/j;->a(Lcom/zinio/mobile/android/a/a/y;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1, v4}, Lcom/zinio/mobile/android/a/a/j;->a(Z)V

    sget-object v1, Lcom/zinio/mobile/android/a/b/l;->b:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v1, v3}, Lcom/zinio/mobile/android/a/b/l;->a(Z)V

    new-instance v1, Lcom/zinio/mobile/android/b/g;

    invoke-direct {v1, v0}, Lcom/zinio/mobile/android/b/g;-><init>(Ljava/lang/Throwable;)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/b/g;->a(I)V

    throw v1

    :cond_5
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/zinio/mobile/android/a/b/f;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zinio/mobile/android/a/b/f;-><init>(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/resources/download/j;)V

    goto/16 :goto_0

    .line 477
    :cond_6
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/a/b/l;->f(Lcom/zinio/mobile/android/a/a/j;)Lcom/zinio/mobile/android/a/a/y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zinio/mobile/android/a/a/j;->a(Lcom/zinio/mobile/android/a/a/y;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    .line 561
    invoke-interface {p2}, Lcom/zinio/mobile/android/a/a/x;->b()Lcom/zinio/mobile/android/a/a/w;

    move-result-object v2

    .line 562
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->a:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    invoke-static {p1, p2}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v3

    .line 564
    invoke-static {p1, p2}, Lcom/zinio/mobile/android/resources/a/a;->c(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v4

    .line 566
    new-instance v1, Lcom/zinio/mobile/android/a/b/i;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/zinio/mobile/android/a/b/i;-><init>(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/resources/download/j;)V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->c:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 579
    :cond_2
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/zinio/mobile/android/a/a/s;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/s;->a()I

    move-result v1

    move v8, v1

    .line 582
    :goto_1
    invoke-static {p1, p2}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v4

    .line 585
    const-string v1, ""

    if-eq v4, v1, :cond_0

    .line 589
    invoke-static {p1, p2}, Lcom/zinio/mobile/android/resources/a/a;->c(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v5

    .line 590
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v3, v6

    .line 592
    :goto_2
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v9, v6

    .line 595
    :goto_3
    new-instance v1, Lcom/zinio/mobile/android/a/b/j;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/zinio/mobile/android/a/b/j;-><init>(Lcom/zinio/mobile/android/a/b/l;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/resources/download/j;)V

    goto :goto_0

    .line 579
    :cond_3
    move-object v0, p2

    check-cast v0, Lcom/zinio/mobile/android/a/a/h;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/h;->a()I

    move-result v1

    move v8, v1

    goto :goto_1

    .line 590
    :cond_4
    const/4 v1, 0x3

    move v3, v1

    goto :goto_2

    .line 592
    :cond_5
    const/4 v1, 0x5

    move v9, v1

    goto :goto_3

    .line 606
    :cond_6
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->d:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 610
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->e:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    invoke-static {p1, p2}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v3

    .line 615
    invoke-static {p1, p2}, Lcom/zinio/mobile/android/resources/a/a;->c(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v4

    .line 616
    new-instance v1, Lcom/zinio/mobile/android/a/b/c;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/zinio/mobile/android/a/b/c;-><init>(Lcom/zinio/mobile/android/a/b/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/resources/download/j;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/zinio/mobile/android/a/b/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/l;->f:Lcom/zinio/mobile/android/a/b/ab;

    .line 544
    return-void
.end method

.method public final a(Z)V
    .locals 8
    .parameter

    .prologue
    .line 503
    invoke-static {}, Lcom/zinio/mobile/android/d/a;->a()V

    .line 505
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/b/s;->a(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 507
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 508
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 509
    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    :cond_0
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v4

    .line 513
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 514
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 515
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 519
    invoke-direct {p0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/io/File;)Z

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/q;->a()Lcom/zinio/mobile/android/a/b/q;

    .line 524
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v6, v7}, Lcom/zinio/mobile/android/a/b/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/q;->b()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 529
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception on updating isDownloaded issue flag. IssueID = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "UserPubID = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->f:Lcom/zinio/mobile/android/a/b/ab;

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->f:Lcom/zinio/mobile/android/a/b/ab;

    invoke-interface {v0}, Lcom/zinio/mobile/android/a/b/ab;->b()V

    .line 540
    :cond_2
    return-void
.end method

.method public final b(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 6
    .parameter

    .prologue
    const/16 v4, 0x20

    .line 1178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download complete for issue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1179
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pub_id"

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "issue_id"

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080044

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080045

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020034

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Zinio"

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v0, 0x14

    iput v0, v2, Landroid/app/Notification;->flags:I

    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x59203e

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1181
    :try_start_0
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    .line 1182
    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zinio/mobile/android/b/a/l;
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :goto_0
    return-void

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1187
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    .line 1189
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zinio/mobile/android/a/b/h;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/a/b/h;-><init>(Lcom/zinio/mobile/android/a/b/l;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 361
    return-void
.end method

.method public final c(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 1
    .parameter

    .prologue
    .line 640
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    new-instance v0, Lcom/zinio/mobile/android/a/b/d;

    invoke-direct {v0, p0, p1}, Lcom/zinio/mobile/android/a/b/d;-><init>(Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/a/j;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/d;->start()V

    .line 659
    :cond_0
    new-instance v0, Lcom/zinio/mobile/android/a/b/e;

    invoke-direct {v0, p0, p1}, Lcom/zinio/mobile/android/a/b/e;-><init>(Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/a/j;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/e;->start()V

    .line 682
    return-void
.end method

.method public final d()Lcom/zinio/mobile/android/a/b/s;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->m()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    .line 369
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/s;->a(Ljava/lang/Object;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    return-object v0
.end method

.method public final d(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 10
    .parameter

    .prologue
    .line 694
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    .line 696
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/q;->a()Lcom/zinio/mobile/android/a/b/q;

    .line 701
    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v1

    .line 703
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v4

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->l()I

    move-result v5

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->m()F

    move-result v6

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v7

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->g()D

    move-result-wide v8

    invoke-virtual/range {v0 .. v9}, Lcom/zinio/mobile/android/a/b/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFZD)Z

    move-result v0

    .line 708
    if-nez v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v4

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->l()I

    move-result v5

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->m()F

    move-result v6

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v7

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->g()D

    move-result-wide v8

    invoke-virtual/range {v0 .. v9}, Lcom/zinio/mobile/android/a/b/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFZD)J

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/q;->b()V

    goto :goto_0
.end method

.method public final e()V
    .locals 13

    .prologue
    .line 722
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v1

    .line 724
    iget-object v2, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v2, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/b/q;->a()Lcom/zinio/mobile/android/a/b/q;

    .line 730
    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v2

    .line 731
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/s;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    move-object v11, v0

    .line 732
    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 733
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v5

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->l()I

    move-result v6

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->m()F

    move-result v7

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v8

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->g()D

    move-result-wide v9

    invoke-virtual/range {v1 .. v10}, Lcom/zinio/mobile/android/a/b/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFZD)Z

    move-result v1

    .line 741
    if-nez v1, :cond_2

    .line 742
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v5

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->l()I

    move-result v6

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->m()F

    move-result v7

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v8

    invoke-virtual {v11}, Lcom/zinio/mobile/android/a/a/j;->g()D

    move-result-wide v9

    invoke-virtual/range {v1 .. v10}, Lcom/zinio/mobile/android/a/b/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFZD)J

    goto :goto_1

    .line 749
    :cond_3
    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/l;->c:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/q;->b()V

    goto :goto_0
.end method

.method public final e_()V
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    .line 1195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->g:Lcom/zinio/mobile/android/a/a/j;

    .line 1196
    return-void
.end method

.method final f()V
    .locals 3

    .prologue
    .line 922
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 925
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/a/a/j;->d(Z)V

    goto :goto_0

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->d()V

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    .line 931
    :cond_1
    return-void
.end method

.method protected final finalize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/b/l;->e()V

    .line 283
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/l;->e:Lcom/zinio/mobile/android/a/b/x;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    iput-object v2, p0, Lcom/zinio/mobile/android/a/b/l;->e:Lcom/zinio/mobile/android/a/b/x;

    .line 286
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->d:Lcom/zinio/mobile/android/a/b/s;

    sget-object v1, Lcom/zinio/mobile/android/a/b/l;->b:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/s;->b(Ljava/lang/Object;)V

    .line 290
    :cond_0
    sput-object v2, Lcom/zinio/mobile/android/a/b/l;->b:Lcom/zinio/mobile/android/a/b/l;

    .line 291
    invoke-super {p0}, Lcom/zinio/mobile/android/a/d;->finalize()V

    .line 292
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->g:Lcom/zinio/mobile/android/a/a/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lcom/zinio/mobile/android/a/a/j;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->g:Lcom/zinio/mobile/android/a/a/j;

    return-object v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping initialization of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/l;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/zinio/mobile/android/a/b/l;->n()V

    .line 1217
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    .line 1218
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->S()V

    .line 1219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/l;->g:Lcom/zinio/mobile/android/a/a/j;

    .line 1220
    return-void
.end method
