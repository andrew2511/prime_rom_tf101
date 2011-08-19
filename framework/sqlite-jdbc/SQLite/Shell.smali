.class public LSQLite/Shell;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements LSQLite/Callback;


# static fields
.field static final MODE_Column:I = 0x1

.field static final MODE_Html:I = 0x4

.field static final MODE_Insert:I = 0x5

.field static final MODE_Insert2:I = 0x6

.field static final MODE_Line:I = 0x0

.field static final MODE_List:I = 0x2

.field static final MODE_Semi:I = 0x3


# instance fields
.field cols:[Ljava/lang/String;

.field colwidth:[I

.field count:I

.field db:LSQLite/Database;

.field destTable:Ljava/lang/String;

.field echo:Z

.field err:Ljava/io/PrintWriter;

.field mode:I

.field pw:Ljava/io/PrintWriter;

.field sep:Ljava/lang/String;

.field showHeader:Z

.field tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;Ljava/io/PrintStream;)V
    .registers 4
    .parameter "ps"
    .parameter "errs"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    .line 47
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V
    .registers 3
    .parameter "pw"
    .parameter "err"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    .line 42
    iput-object p2, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    .line 43
    return-void
.end method

.method static html_quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "str"

    .prologue
    .line 121
    if-nez p0, :cond_5

    .line 122
    const-string v4, "NULL"

    .line 142
    :goto_4
    return-object v4

    .line 124
    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5f

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 127
    .local v0, c:C
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_21

    .line 128
    const-string v4, "&lt;"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 129
    :cond_21
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_2b

    .line 130
    const-string v4, "&gt;"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 131
    :cond_2b
    const/16 v4, 0x26

    if-ne v0, v4, :cond_35

    .line 132
    const-string v4, "&amp;"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 134
    :cond_35
    move v3, v0

    .line 135
    .local v3, x:I
    const/16 v4, 0x20

    if-lt v3, v4, :cond_3e

    const/16 v4, 0x7f

    if-le v3, v4, :cond_5b

    .line 136
    :cond_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 138
    :cond_5b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 142
    .end local v0           #c:C
    .end local v3           #x:I
    :cond_5f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method static is_numeric(Ljava/lang/String;)Z
    .registers 3
    .parameter "str"

    .prologue
    .line 147
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 151
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 148
    :catch_5
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static main([Ljava/lang/String;)V
    .registers 13
    .parameter "args"

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 530
    const/4 v4, 0x0

    .line 531
    .local v4, key:Ljava/lang/String;
    new-instance v5, LSQLite/Shell;

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v5, v7, v8}, LSQLite/Shell;-><init>(Ljava/io/PrintStream;Ljava/io/PrintStream;)V

    .line 532
    .local v5, s:LSQLite/Shell;
    iput v11, v5, LSQLite/Shell;->mode:I

    .line 533
    const-string v7, "|"

    iput-object v7, v5, LSQLite/Shell;->sep:Ljava/lang/String;

    .line 534
    iput-boolean v9, v5, LSQLite/Shell;->showHeader:Z

    .line 535
    new-instance v7, LSQLite/Database;

    invoke-direct {v7}, LSQLite/Database;-><init>()V

    iput-object v7, v5, LSQLite/Shell;->db:LSQLite/Database;

    .line 536
    const/4 v0, 0x0

    .local v0, dbname:Ljava/lang/String;
    const/4 v6, 0x0

    .line 537
    .local v6, sql:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    array-length v7, p0

    if-ge v2, v7, :cond_ac

    .line 538
    aget-object v7, p0, v2

    const-string v8, "-html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_32

    .line 539
    const/4 v7, 0x4

    iput v7, v5, LSQLite/Shell;->mode:I

    .line 537
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 540
    :cond_32
    aget-object v7, p0, v2

    const-string v8, "-list"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3f

    .line 541
    iput v11, v5, LSQLite/Shell;->mode:I

    goto :goto_2f

    .line 542
    :cond_3f
    aget-object v7, p0, v2

    const-string v8, "-line"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4c

    .line 543
    iput v9, v5, LSQLite/Shell;->mode:I

    goto :goto_2f

    .line 544
    :cond_4c
    array-length v7, p0

    sub-int/2addr v7, v10

    if-ge v2, v7, :cond_61

    aget-object v7, p0, v2

    const-string v8, "-separator"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_61

    .line 546
    add-int/lit8 v2, v2, 0x1

    .line 547
    aget-object v7, p0, v2

    iput-object v7, v5, LSQLite/Shell;->sep:Ljava/lang/String;

    goto :goto_2f

    .line 548
    :cond_61
    aget-object v7, p0, v2

    const-string v8, "-header"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6e

    .line 549
    iput-boolean v10, v5, LSQLite/Shell;->showHeader:Z

    goto :goto_2f

    .line 550
    :cond_6e
    aget-object v7, p0, v2

    const-string v8, "-noheader"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7b

    .line 551
    iput-boolean v9, v5, LSQLite/Shell;->showHeader:Z

    goto :goto_2f

    .line 552
    :cond_7b
    aget-object v7, p0, v2

    const-string v8, "-echo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_88

    .line 553
    iput-boolean v10, v5, LSQLite/Shell;->echo:Z

    goto :goto_2f

    .line 554
    :cond_88
    aget-object v7, p0, v2

    const-string v8, "-key"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_97

    .line 555
    add-int/lit8 v2, v2, 0x1

    .line 556
    aget-object v4, p0, v2

    goto :goto_2f

    .line 557
    :cond_97
    if-nez v0, :cond_9c

    .line 558
    aget-object v0, p0, v2

    goto :goto_2f

    .line 559
    :cond_9c
    if-nez v6, :cond_a1

    .line 560
    aget-object v6, p0, v2

    goto :goto_2f

    .line 562
    :cond_a1
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Arguments: ?OPTIONS? FILENAME ?SQL?"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 563
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_2f

    .line 566
    :cond_ac
    if-nez v0, :cond_b8

    .line 567
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "No database file given"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 568
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 571
    :cond_b8
    :try_start_b8
    iget-object v7, v5, LSQLite/Shell;->db:LSQLite/Database;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, LSQLite/Database;->open(Ljava/lang/String;I)V
    :try_end_be
    .catch LSQLite/Exception; {:try_start_b8 .. :try_end_be} :catch_d5

    .line 576
    :goto_be
    if-eqz v4, :cond_c5

    .line 578
    :try_start_c0
    iget-object v7, v5, LSQLite/Shell;->db:LSQLite/Database;

    invoke-virtual {v7, v4}, LSQLite/Database;->key(Ljava/lang/String;)V
    :try_end_c5
    .catch LSQLite/Exception; {:try_start_c0 .. :try_end_c5} :catch_f3

    .line 584
    :cond_c5
    :goto_c5
    if-eqz v6, :cond_111

    .line 585
    invoke-virtual {v5, v6}, LSQLite/Shell;->do_cmd(Ljava/lang/String;)V

    .line 586
    iget-object v7, v5, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 594
    :goto_cf
    :try_start_cf
    iget-object v7, v5, LSQLite/Shell;->db:LSQLite/Database;

    invoke-virtual {v7}, LSQLite/Database;->close()V
    :try_end_d4
    .catch LSQLite/Exception; {:try_start_cf .. :try_end_d4} :catch_126

    .line 597
    :goto_d4
    return-void

    .line 572
    :catch_d5
    move-exception v7

    move-object v1, v7

    .line 573
    .local v1, e:LSQLite/Exception;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open database: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 574
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_be

    .line 579
    .end local v1           #e:LSQLite/Exception;
    :catch_f3
    move-exception v7

    move-object v1, v7

    .line 580
    .restart local v1       #e:LSQLite/Exception;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to set key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 581
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_c5

    .line 588
    .end local v1           #e:LSQLite/Exception;
    :cond_111
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v8, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 590
    .local v3, is:Ljava/io/BufferedReader;
    invoke-virtual {v5, v3}, LSQLite/Shell;->do_input(Ljava/io/BufferedReader;)V

    .line 591
    iget-object v7, v5, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    goto :goto_cf

    .line 595
    .end local v3           #is:Ljava/io/BufferedReader;
    :catch_126
    move-exception v7

    goto :goto_d4
.end method

.method public static sql_quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "str"

    .prologue
    const/16 v7, 0x27

    .line 91
    if-nez p0, :cond_7

    .line 92
    const-string v5, "NULL"

    .line 117
    :goto_6
    return-object v5

    .line 94
    :cond_7
    const/4 v4, 0x0

    .local v4, single:I
    const/4 v1, 0x0

    .line 95
    .local v1, dbl:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_26

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1b

    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 95
    :cond_18
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 98
    :cond_1b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_18

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 102
    :cond_26
    if-nez v4, :cond_42

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 105
    :cond_42
    if-nez v1, :cond_5e

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 108
    :cond_5e
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :goto_66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_7e

    .line 110
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 111
    .local v0, c:C
    if-ne v0, v7, :cond_7a

    .line 112
    const-string v5, "\'\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 114
    :cond_7a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_77

    .line 117
    .end local v0           #c:C
    :cond_7e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6
.end method

.method public static sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "str"

    .prologue
    const/16 v7, 0x22

    .line 64
    if-nez p0, :cond_7

    .line 65
    const-string v5, "NULL"

    .line 87
    :goto_6
    return-object v5

    .line 67
    :cond_7
    const/4 v4, 0x0

    .local v4, single:I
    const/4 v1, 0x0

    .line 68
    .local v1, dbl:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_26

    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_1d

    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 68
    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 71
    :cond_1d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1a

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 75
    :cond_26
    if-nez v1, :cond_42

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 78
    :cond_42
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :goto_4a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_62

    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 81
    .local v0, c:C
    if-ne v0, v7, :cond_5e

    .line 82
    const-string v5, "\"\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 84
    :cond_5e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5b

    .line 87
    .end local v0           #c:C
    :cond_62
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 51
    new-instance v0, LSQLite/Shell;

    iget-object v1, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    iget-object v2, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-direct {v0, v1, v2}, LSQLite/Shell;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V

    .line 52
    .local v0, s:LSQLite/Shell;
    iget-object v1, p0, LSQLite/Shell;->db:LSQLite/Database;

    iput-object v1, v0, LSQLite/Shell;->db:LSQLite/Database;

    .line 53
    iget-boolean v1, p0, LSQLite/Shell;->echo:Z

    iput-boolean v1, v0, LSQLite/Shell;->echo:Z

    .line 54
    iget v1, p0, LSQLite/Shell;->mode:I

    iput v1, v0, LSQLite/Shell;->mode:I

    .line 55
    const/4 v1, 0x0

    iput v1, v0, LSQLite/Shell;->count:I

    .line 56
    iget-boolean v1, p0, LSQLite/Shell;->showHeader:Z

    iput-boolean v1, v0, LSQLite/Shell;->showHeader:Z

    .line 57
    iget-object v1, p0, LSQLite/Shell;->tableName:Ljava/lang/String;

    iput-object v1, v0, LSQLite/Shell;->tableName:Ljava/lang/String;

    .line 58
    iget-object v1, p0, LSQLite/Shell;->sep:Ljava/lang/String;

    iput-object v1, v0, LSQLite/Shell;->sep:Ljava/lang/String;

    .line 59
    iget-object v1, p0, LSQLite/Shell;->colwidth:[I

    iput-object v1, v0, LSQLite/Shell;->colwidth:[I

    .line 60
    return-object v0
.end method

.method public columns([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 167
    iput-object p1, p0, LSQLite/Shell;->cols:[Ljava/lang/String;

    .line 168
    return-void
.end method

.method do_cmd(Ljava/lang/String;)V
    .registers 6
    .parameter "sql"

    .prologue
    .line 514
    iget-object v1, p0, LSQLite/Shell;->db:LSQLite/Database;

    if-nez v1, :cond_5

    .line 527
    :goto_4
    return-void

    .line 517
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_18

    .line 518
    invoke-virtual {p0, p1}, LSQLite/Shell;->do_meta(Ljava/lang/String;)V

    goto :goto_4

    .line 521
    :cond_18
    :try_start_18
    iget-object v1, p0, LSQLite/Shell;->db:LSQLite/Database;

    invoke-virtual {v1, p1, p0}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_1d
    .catch LSQLite/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_4

    .line 522
    :catch_1e
    move-exception v1

    move-object v0, v1

    .line 523
    .local v0, e:LSQLite/Exception;
    iget-object v1, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_4
.end method

.method do_input(Ljava/io/BufferedReader;)V
    .registers 9
    .parameter "is"

    .prologue
    .line 475
    const/4 v3, 0x0

    .line 476
    .local v3, sql:Ljava/lang/String;
    const-string v2, "SQLITE> "

    .line 477
    .local v2, prompt:Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, p1, v2}, LSQLite/Shell;->read_line(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_80

    .line 478
    iget-boolean v4, p0, LSQLite/Shell;->echo:Z

    if-eqz v4, :cond_12

    .line 479
    iget-object v4, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2a

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_2a

    .line 482
    invoke-virtual {p0, v1}, LSQLite/Shell;->do_meta(Ljava/lang/String;)V

    .line 505
    :goto_24
    iget-object v4, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    goto :goto_3

    .line 484
    :cond_2a
    if-nez v3, :cond_3c

    .line 485
    move-object v3, v1

    .line 489
    :goto_2d
    invoke-static {v3}, LSQLite/Database;->complete(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 491
    :try_start_33
    iget-object v4, p0, LSQLite/Shell;->db:LSQLite/Database;

    invoke-virtual {v4, v3, p0}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_38
    .catch LSQLite/Exception; {:try_start_33 .. :try_end_38} :catch_54

    .line 499
    :goto_38
    const/4 v3, 0x0

    .line 500
    const-string v2, "SQLITE> "

    goto :goto_24

    .line 487
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 492
    :catch_54
    move-exception v4

    move-object v0, v4

    .line 493
    .local v0, e:LSQLite/Exception;
    iget-boolean v4, p0, LSQLite/Shell;->echo:Z

    if-nez v4, :cond_5f

    .line 494
    iget-object v4, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    :cond_5f
    iget-object v4, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    iget-object v4, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    goto :goto_38

    .line 502
    .end local v0           #e:LSQLite/Exception;
    :cond_7d
    const-string v2, "SQLITE? "

    goto :goto_24

    .line 507
    :cond_80
    if-eqz v3, :cond_9f

    .line 508
    iget-object v4, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete SQL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    iget-object v4, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 511
    :cond_9f
    return-void
.end method

.method do_meta(Ljava/lang/String;)V
    .registers 16
    .parameter "line"

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 299
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 300
    .local v6, st:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    .line 301
    .local v4, n:I
    if-gtz v4, :cond_13

    .line 459
    :cond_12
    :goto_12
    return-void

    .line 304
    :cond_13
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, cmd:Ljava/lang/String;
    sub-int v9, v4, v11

    new-array v0, v9, [Ljava/lang/String;

    .line 306
    .local v0, args:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 307
    .local v3, i:I
    :goto_1c
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 308
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v3

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 311
    :cond_2b
    const-string v9, ".dump"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_39

    .line 312
    new-instance v9, LSQLite/DBDump;

    invoke-direct {v9, p0, v0}, LSQLite/DBDump;-><init>(LSQLite/Shell;[Ljava/lang/String;)V

    goto :goto_12

    .line 315
    :cond_39
    const-string v9, ".echo"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5b

    .line 316
    array-length v9, v0

    if-lez v9, :cond_12

    aget-object v9, v0, v12

    const-string v10, "y"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_58

    aget-object v9, v0, v12

    const-string v10, "on"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 318
    :cond_58
    iput-boolean v11, p0, LSQLite/Shell;->echo:Z

    goto :goto_12

    .line 322
    :cond_5b
    const-string v9, ".exit"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_6b

    .line 324
    :try_start_63
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    invoke-virtual {v9}, LSQLite/Database;->close()V
    :try_end_68
    .catch LSQLite/Exception; {:try_start_63 .. :try_end_68} :catch_2d0

    .line 327
    :goto_68
    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    .line 329
    :cond_6b
    const-string v9, ".header"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8d

    .line 330
    array-length v9, v0

    if-lez v9, :cond_12

    aget-object v9, v0, v12

    const-string v10, "y"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8a

    aget-object v9, v0, v12

    const-string v10, "on"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 332
    :cond_8a
    iput-boolean v11, p0, LSQLite/Shell;->showHeader:Z

    goto :goto_12

    .line 336
    :cond_8d
    const-string v9, ".help"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_e4

    .line 337
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".dump ?TABLE? ...  Dump database in text fmt"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".echo ON|OFF       Command echo on or off"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".enc ?NAME?        Change encoding"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".exit              Exit program"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".header ON|OFF     Display headers on or off"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".help              This message"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".mode MODE         Set output mode to\n                   line, column, insert\n                   list, or html"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".mode insert TABLE Generate SQL insert stmts"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".schema ?PATTERN?  List table schema"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".separator STRING  Set separator string"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".tables ?PATTERN?  List table names"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 352
    :cond_e4
    const-string v9, ".mode"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_13f

    .line 353
    array-length v9, v0

    if-lez v9, :cond_12

    .line 354
    aget-object v9, v0, v12

    const-string v10, "line"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_fd

    .line 355
    iput v12, p0, LSQLite/Shell;->mode:I

    goto/16 :goto_12

    .line 356
    :cond_fd
    aget-object v9, v0, v12

    const-string v10, "column"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_10b

    .line 357
    iput v11, p0, LSQLite/Shell;->mode:I

    goto/16 :goto_12

    .line 358
    :cond_10b
    aget-object v9, v0, v12

    const-string v10, "list"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_11a

    .line 359
    const/4 v9, 0x2

    iput v9, p0, LSQLite/Shell;->mode:I

    goto/16 :goto_12

    .line 360
    :cond_11a
    aget-object v9, v0, v12

    const-string v10, "html"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_129

    .line 361
    const/4 v9, 0x4

    iput v9, p0, LSQLite/Shell;->mode:I

    goto/16 :goto_12

    .line 362
    :cond_129
    aget-object v9, v0, v12

    const-string v10, "insert"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_12

    .line 363
    const/4 v9, 0x5

    iput v9, p0, LSQLite/Shell;->mode:I

    .line 364
    array-length v9, v0

    if-le v9, v11, :cond_12

    .line 365
    aget-object v9, v0, v11

    iput-object v9, p0, LSQLite/Shell;->destTable:Ljava/lang/String;

    goto/16 :goto_12

    .line 371
    :cond_13f
    const-string v9, ".separator"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_150

    .line 372
    array-length v9, v0

    if-lez v9, :cond_12

    .line 373
    aget-object v9, v0, v12

    iput-object v9, p0, LSQLite/Shell;->sep:Ljava/lang/String;

    goto/16 :goto_12

    .line 377
    :cond_150
    const-string v9, ".tables"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1d3

    .line 378
    const/4 v7, 0x0

    .line 379
    .local v7, t:LSQLite/TableResult;
    array-length v9, v0

    if-lez v9, :cond_1aa

    .line 381
    const/4 v9, 0x1

    :try_start_15d
    new-array v5, v9, [Ljava/lang/String;

    .line 382
    .local v5, qarg:[Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v0, v10

    aput-object v10, v5, v9

    .line 383
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name LIKE \'%%%q%%\' ORDER BY name"

    invoke-virtual {v9, v10, v5}, LSQLite/Database;->get_table(Ljava/lang/String;[Ljava/lang/String;)LSQLite/TableResult;
    :try_end_16c
    .catch LSQLite/Exception; {:try_start_15d .. :try_end_16c} :catch_18a

    move-result-object v7

    .line 400
    .end local v5           #qarg:[Ljava/lang/String;
    :goto_16d
    if-eqz v7, :cond_12

    .line 401
    const/4 v3, 0x0

    :goto_170
    iget v9, v7, LSQLite/TableResult;->nrows:I

    if-ge v3, v9, :cond_12

    .line 402
    iget-object v9, v7, LSQLite/TableResult;->rows:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    aget-object v8, v9, v12

    .line 403
    .local v8, tab:Ljava/lang/String;
    if-eqz v8, :cond_187

    .line 404
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    :cond_187
    add-int/lit8 v3, v3, 0x1

    goto :goto_170

    .line 387
    .end local v8           #tab:Ljava/lang/String;
    :catch_18a
    move-exception v9

    move-object v2, v9

    .line 388
    .local v2, e:LSQLite/Exception;
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SQL Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto :goto_16d

    .line 393
    .end local v2           #e:LSQLite/Exception;
    :cond_1aa
    :try_start_1aa
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\' ORDER BY name"

    invoke-virtual {v9, v10}, LSQLite/Database;->get_table(Ljava/lang/String;)LSQLite/TableResult;
    :try_end_1b1
    .catch LSQLite/Exception; {:try_start_1aa .. :try_end_1b1} :catch_1b3

    move-result-object v7

    goto :goto_16d

    .line 395
    :catch_1b3
    move-exception v9

    move-object v2, v9

    .line 396
    .restart local v2       #e:LSQLite/Exception;
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SQL Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto :goto_16d

    .line 410
    .end local v2           #e:LSQLite/Exception;
    .end local v7           #t:LSQLite/TableResult;
    :cond_1d3
    const-string v9, ".schema"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_23b

    .line 411
    array-length v9, v0

    if-lez v9, :cond_211

    .line 413
    const/4 v9, 0x1

    :try_start_1df
    new-array v5, v9, [Ljava/lang/String;

    .line 414
    .restart local v5       #qarg:[Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v0, v10

    aput-object v10, v5, v9

    .line 415
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    const-string v10, "SELECT sql FROM sqlite_master WHERE type!=\'meta\' AND name LIKE \'%%%q%%\' AND sql NOTNULL ORDER BY type DESC, name"

    invoke-virtual {v9, v10, p0, v5}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    :try_end_1ee
    .catch LSQLite/Exception; {:try_start_1df .. :try_end_1ee} :catch_1f0

    goto/16 :goto_12

    .line 421
    .end local v5           #qarg:[Ljava/lang/String;
    :catch_1f0
    move-exception v9

    move-object v2, v9

    .line 422
    .restart local v2       #e:LSQLite/Exception;
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SQL Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_12

    .line 427
    .end local v2           #e:LSQLite/Exception;
    :cond_211
    :try_start_211
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    const-string v10, "SELECT sql FROM sqlite_master WHERE type!=\'meta\' AND sql NOTNULL ORDER BY tbl_name, type DESC, name"

    invoke-virtual {v9, v10, p0}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_218
    .catch LSQLite/Exception; {:try_start_211 .. :try_end_218} :catch_21a

    goto/16 :goto_12

    .line 432
    :catch_21a
    move-exception v9

    move-object v2, v9

    .line 433
    .restart local v2       #e:LSQLite/Exception;
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SQL Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_12

    .line 439
    .end local v2           #e:LSQLite/Exception;
    :cond_23b
    const-string v9, ".enc"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_273

    .line 441
    :try_start_243
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    array-length v10, v0

    if-lez v10, :cond_271

    const/4 v10, 0x0

    aget-object v10, v0, v10

    :goto_24b
    invoke-virtual {v9, v10}, LSQLite/Database;->set_encoding(Ljava/lang/String;)V
    :try_end_24e
    .catch LSQLite/Exception; {:try_start_243 .. :try_end_24e} :catch_250

    goto/16 :goto_12

    .line 442
    :catch_250
    move-exception v9

    move-object v2, v9

    .line 443
    .restart local v2       #e:LSQLite/Exception;
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_12

    .end local v2           #e:LSQLite/Exception;
    :cond_271
    move-object v10, v13

    .line 441
    goto :goto_24b

    .line 448
    :cond_273
    const-string v9, ".rekey"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2ab

    .line 450
    :try_start_27b
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    array-length v10, v0

    if-lez v10, :cond_2a9

    const/4 v10, 0x0

    aget-object v10, v0, v10

    :goto_283
    invoke-virtual {v9, v10}, LSQLite/Database;->rekey(Ljava/lang/String;)V
    :try_end_286
    .catch LSQLite/Exception; {:try_start_27b .. :try_end_286} :catch_288

    goto/16 :goto_12

    .line 451
    :catch_288
    move-exception v9

    move-object v2, v9

    .line 452
    .restart local v2       #e:LSQLite/Exception;
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_12

    .end local v2           #e:LSQLite/Exception;
    :cond_2a9
    move-object v10, v13

    .line 450
    goto :goto_283

    .line 457
    :cond_2ab
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown command \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_12

    .line 325
    :catch_2d0
    move-exception v9

    goto/16 :goto_68
.end method

.method public newrow([Ljava/lang/String;)Z
    .registers 11
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    .line 177
    iget v5, p0, LSQLite/Shell;->mode:I

    packed-switch v5, :pswitch_data_2be

    .line 295
    :cond_6
    :goto_6
    const/4 v5, 0x0

    return v5

    .line 179
    :pswitch_8
    array-length v5, p1

    if-eqz v5, :cond_6

    .line 182
    iget v5, p0, LSQLite/Shell;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, LSQLite/Shell;->count:I

    if-lez v5, :cond_1a

    .line 183
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    :cond_1a
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    array-length v5, p1

    if-ge v1, v5, :cond_6

    .line 186
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, LSQLite/Shell;->cols:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_47

    const-string v6, "NULL"

    :goto_41
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 186
    :cond_47
    aget-object v6, p1, v1

    goto :goto_41

    .line 191
    .end local v1           #i:I
    :pswitch_4a
    const-string v0, ""

    .line 192
    .local v0, csep:Ljava/lang/String;
    iget v5, p0, LSQLite/Shell;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, LSQLite/Shell;->count:I

    if-nez v5, :cond_9d

    .line 193
    array-length v5, p1

    new-array v5, v5, [I

    iput-object v5, p0, LSQLite/Shell;->colwidth:[I

    .line 194
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5a
    array-length v5, p1

    if-ge v1, v5, :cond_92

    .line 196
    iget-object v5, p0, LSQLite/Shell;->cols:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 197
    .local v4, w:I
    const/16 v5, 0xa

    if-ge v4, v5, :cond_6b

    .line 198
    const/16 v4, 0xa

    .line 200
    :cond_6b
    iget-object v5, p0, LSQLite/Shell;->colwidth:[I

    aput v4, v5, v1

    .line 201
    iget-boolean v5, p0, LSQLite/Shell;->showHeader:Z

    if-eqz v5, :cond_8f

    .line 202
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LSQLite/Shell;->cols:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    const-string v0, " "

    .line 194
    :cond_8f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 206
    .end local v4           #w:I
    :cond_92
    iget-boolean v5, p0, LSQLite/Shell;->showHeader:Z

    if-eqz v5, :cond_9d

    .line 207
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    .end local v1           #i:I
    :cond_9d
    array-length v5, p1

    if-eqz v5, :cond_6

    .line 213
    const-string v0, ""

    .line 214
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_a3
    array-length v5, p1

    if-ge v1, v5, :cond_ca

    .line 215
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    if-nez v7, :cond_c7

    const-string v7, "NULL"

    :goto_b7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    const-string v0, " "

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 215
    :cond_c7
    aget-object v7, p1, v1

    goto :goto_b7

    .line 218
    :cond_ca
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 222
    .end local v0           #csep:Ljava/lang/String;
    .end local v1           #i:I
    :pswitch_d3
    iget v5, p0, LSQLite/Shell;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, LSQLite/Shell;->count:I

    if-nez v5, :cond_109

    iget-boolean v5, p0, LSQLite/Shell;->showHeader:Z

    if-eqz v5, :cond_109

    .line 223
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_e0
    array-length v5, p1

    if-ge v1, v5, :cond_109

    .line 224
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, LSQLite/Shell;->cols:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    sub-int/2addr v7, v8

    if-ne v1, v7, :cond_106

    const-string v7, "\n"

    :goto_f8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_e0

    .line 224
    :cond_106
    iget-object v7, p0, LSQLite/Shell;->sep:Ljava/lang/String;

    goto :goto_f8

    .line 228
    .end local v1           #i:I
    :cond_109
    array-length v5, p1

    if-eqz v5, :cond_6

    .line 231
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_10d
    array-length v5, p1

    if-ge v1, v5, :cond_139

    .line 232
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    aget-object v6, p1, v1

    if-nez v6, :cond_12a

    const-string v6, "NULL"

    :goto_118
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    iget v5, p0, LSQLite/Shell;->mode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_12d

    .line 234
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    :cond_127
    :goto_127
    add-int/lit8 v1, v1, 0x1

    goto :goto_10d

    .line 232
    :cond_12a
    aget-object v6, p1, v1

    goto :goto_118

    .line 235
    :cond_12d
    array-length v5, p1

    sub-int/2addr v5, v8

    if-ge v1, v5, :cond_127

    .line 236
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    iget-object v6, p0, LSQLite/Shell;->sep:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_127

    .line 239
    :cond_139
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 242
    .end local v1           #i:I
    :pswitch_142
    iget v5, p0, LSQLite/Shell;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, LSQLite/Shell;->count:I

    if-nez v5, :cond_189

    iget-boolean v5, p0, LSQLite/Shell;->showHeader:Z

    if-eqz v5, :cond_189

    .line 243
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, "<TR>"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_156
    array-length v5, p1

    if-ge v1, v5, :cond_182

    .line 245
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<TH>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LSQLite/Shell;->cols:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v7}, LSQLite/Shell;->html_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</TH>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_156

    .line 247
    :cond_182
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, "</TR>"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    .end local v1           #i:I
    :cond_189
    array-length v5, p1

    if-eqz v5, :cond_6

    .line 252
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, "<TR>"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_194
    array-length v5, p1

    if-ge v1, v5, :cond_1be

    .line 254
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<TD>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-static {v7}, LSQLite/Shell;->html_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</TD>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_194

    .line 256
    :cond_1be
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, "</TR>"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 259
    .end local v1           #i:I
    :pswitch_1c7
    array-length v5, p1

    if-eqz v5, :cond_6

    .line 262
    iget-object v2, p0, LSQLite/Shell;->tableName:Ljava/lang/String;

    .line 263
    .local v2, tname:Ljava/lang/String;
    iget-object v5, p0, LSQLite/Shell;->destTable:Ljava/lang/String;

    if-eqz v5, :cond_1d2

    .line 264
    iget-object v2, p0, LSQLite/Shell;->destTable:Ljava/lang/String;

    .line 266
    :cond_1d2
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VALUES("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1f1
    array-length v5, p1

    if-ge v1, v5, :cond_25a

    .line 268
    if-lez v1, :cond_218

    const-string v5, ","

    move-object v3, v5

    .line 269
    .local v3, tsep:Ljava/lang/String;
    :goto_1f9
    aget-object v5, p1, v1

    if-nez v5, :cond_21c

    .line 270
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "NULL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    :goto_215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f1

    .line 268
    .end local v3           #tsep:Ljava/lang/String;
    :cond_218
    const-string v5, ""

    move-object v3, v5

    goto :goto_1f9

    .line 271
    .restart local v3       #tsep:Ljava/lang/String;
    :cond_21c
    aget-object v5, p1, v1

    invoke-static {v5}, LSQLite/Shell;->is_numeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23d

    .line 272
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_215

    .line 274
    :cond_23d
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-static {v7}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_215

    .line 277
    .end local v3           #tsep:Ljava/lang/String;
    :cond_25a
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 280
    .end local v1           #i:I
    .end local v2           #tname:Ljava/lang/String;
    :pswitch_263
    array-length v5, p1

    if-eqz v5, :cond_6

    .line 283
    iget-object v2, p0, LSQLite/Shell;->tableName:Ljava/lang/String;

    .line 284
    .restart local v2       #tname:Ljava/lang/String;
    iget-object v5, p0, LSQLite/Shell;->destTable:Ljava/lang/String;

    if-eqz v5, :cond_26e

    .line 285
    iget-object v2, p0, LSQLite/Shell;->destTable:Ljava/lang/String;

    .line 287
    :cond_26e
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VALUES("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_28d
    array-length v5, p1

    if-ge v1, v5, :cond_2b4

    .line 289
    if-lez v1, :cond_2b0

    const-string v5, ","

    move-object v3, v5

    .line 290
    .restart local v3       #tsep:Ljava/lang/String;
    :goto_295
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_28d

    .line 289
    .end local v3           #tsep:Ljava/lang/String;
    :cond_2b0
    const-string v5, ""

    move-object v3, v5

    goto :goto_295

    .line 292
    :cond_2b4
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 177
    nop

    :pswitch_data_2be
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4a
        :pswitch_d3
        :pswitch_d3
        :pswitch_142
        :pswitch_1c7
        :pswitch_263
    .end packed-switch
.end method

.method read_line(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "is"
    .parameter "prompt"

    .prologue
    .line 463
    if-eqz p2, :cond_c

    .line 464
    :try_start_2
    iget-object v2, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 467
    :cond_c
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_12

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    move-object v2, v1

    .line 470
    .end local v1           #line:Ljava/lang/String;
    :goto_11
    return-object v2

    .line 469
    :catch_12
    move-exception v2

    move-object v0, v2

    .line 470
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_11
.end method

.method set_table_name(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 155
    if-nez p1, :cond_7

    .line 156
    const-string v0, ""

    iput-object v0, p0, LSQLite/Shell;->tableName:Ljava/lang/String;

    .line 164
    :goto_6
    return-void

    .line 159
    :cond_7
    iget-object v0, p0, LSQLite/Shell;->db:LSQLite/Database;

    invoke-virtual {v0}, LSQLite/Database;->is3()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 160
    invoke-static {p1}, LSQLite/Shell;->sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LSQLite/Shell;->tableName:Ljava/lang/String;

    goto :goto_6

    .line 162
    :cond_16
    invoke-static {p1}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LSQLite/Shell;->tableName:Ljava/lang/String;

    goto :goto_6
.end method

.method public types([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 172
    return-void
.end method
