.class Ljava/net/URLClassLoader$URLFileHandler;
.super Ljava/net/URLClassLoader$URLHandler;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "URLFileHandler"
.end annotation


# instance fields
.field private prefix:Ljava/lang/String;

.field final synthetic this$0:Ljava/net/URLClassLoader;


# direct methods
.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V
    .registers 9
    .parameter
    .parameter "url"

    .prologue
    .line 511
    iput-object p1, p0, Ljava/net/URLClassLoader$URLFileHandler;->this$0:Ljava/net/URLClassLoader;

    .line 512
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    .line 513
    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, baseFile:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, host:Ljava/lang/String;
    const/4 v3, 0x0

    .line 516
    .local v3, hostLength:I
    if-eqz v2, :cond_14

    .line 517
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 519
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 521
    .local v1, buf:Ljava/lang/StringBuilder;
    if-lez v3, :cond_2b

    .line 522
    const-string v4, "//"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/net/URLClassLoader$URLFileHandler;->prefix:Ljava/lang/String;

    .line 527
    return-void
.end method


# virtual methods
.method findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 11
    .parameter "packageName"
    .parameter "name"
    .parameter "origName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljava/net/URLClassLoader$URLFileHandler;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, filename:Ljava/lang/String;
    :try_start_14
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_19} :catch_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_19} :catch_33

    move-result-object v2

    .line 540
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 543
    :try_start_25
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 544
    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {p0, v3, p1, p3}, Ljava/net/URLClassLoader$URLFileHandler;->createClass(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2d} :catch_37

    move-result-object v4

    .line 548
    .end local v1           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    :goto_2e
    return-object v4

    .line 534
    :catch_2f
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-object v4, v6

    .line 535
    goto :goto_2e

    .line 536
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_33
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    move-object v4, v6

    .line 537
    goto :goto_2e

    .line 545
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #file:Ljava/io/File;
    :catch_37
    move-exception v4

    :cond_38
    move-object v4, v6

    .line 548
    goto :goto_2e
.end method

.method findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 9
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 553
    const/4 v2, 0x0

    .line 557
    .local v2, idx:I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1b

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_18

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1b

    .line 559
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 562
    :cond_1b
    if-lez v2, :cond_21

    .line 563
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 567
    :cond_21
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/net/URLClassLoader$URLFileHandler;->prefix:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, filename:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 570
    iget-object v3, p0, Ljava/net/URLClassLoader$URLFileHandler;->url:Ljava/net/URL;

    invoke-virtual {p0, v3, p1}, Ljava/net/URLClassLoader$URLFileHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_4a} :catch_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_4a} :catch_52

    move-result-object v3

    .line 574
    .end local v1           #filename:Ljava/lang/String;
    :goto_4b
    return-object v3

    .restart local v1       #filename:Ljava/lang/String;
    :cond_4c
    move-object v3, v6

    .line 572
    goto :goto_4b

    .line 573
    .end local v1           #filename:Ljava/lang/String;
    :catch_4e
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-object v3, v6

    .line 574
    goto :goto_4b

    .line 575
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_52
    move-exception v3

    move-object v0, v3

    .line 577
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
