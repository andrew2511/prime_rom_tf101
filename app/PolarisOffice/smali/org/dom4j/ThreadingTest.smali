.class public Lorg/dom4j/ThreadingTest;
.super Lorg/dom4j/AbstractTestCase;
.source "ThreadingTest.java"


# static fields
.field private static final FIELD_ZERO:Ljava/text/FieldPosition; = null

.field private static final FORMATTER_CACHE:Ljava/lang/ThreadLocal; = null

.field private static final SEPERATOR:Ljava/lang/String; = " - "

.field static class$0:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/dom4j/ThreadingTest;->FORMATTER_CACHE:Ljava/lang/ThreadLocal;

    .line 35
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    sput-object v0, Lorg/dom4j/ThreadingTest;->FIELD_ZERO:Ljava/text/FieldPosition;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/dom4j/AbstractTestCase;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private static getThreadId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, tid:Ljava/lang/String;
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 306
    sget-object v0, Lorg/dom4j/ThreadingTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.ThreadingTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/ThreadingTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 307
    return-void

    .line 306
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static makeRepeatedLoadTest(IILjava/lang/String;)Ljunit/framework/Test;
    .locals 8
    .parameter "users"
    .parameter "iterations"
    .parameter "testMethod"

    .prologue
    .line 294
    const v6, 0x1d4c0

    mul-int/lit16 v7, p0, 0x3e8

    mul-int/2addr v7, p1

    add-int/2addr v6, v7

    int-to-long v1, v6

    .line 296
    .local v1, maxElapsedTime:J
    new-instance v4, Lorg/dom4j/ThreadingTest;

    invoke-direct {v4, p2}, Lorg/dom4j/ThreadingTest;-><init>(Ljava/lang/String;)V

    .line 298
    .local v4, testCase:Ljunit/framework/Test;
    new-instance v3, Ljunit/extensions/RepeatedTest;

    invoke-direct {v3, v4, p1}, Ljunit/extensions/RepeatedTest;-><init>(Ljunit/framework/Test;I)V

    .line 299
    .local v3, repeatedTest:Ljunit/framework/Test;
    new-instance v0, Lcom/clarkware/junitperf/LoadTest;

    invoke-direct {v0, v3, p0}, Lcom/clarkware/junitperf/LoadTest;-><init>(Ljunit/framework/Test;I)V

    .line 300
    .local v0, loadTest:Ljunit/framework/Test;
    new-instance v5, Lcom/clarkware/junitperf/TimedTest;

    invoke-direct {v5, v0, v1, v2}, Lcom/clarkware/junitperf/TimedTest;-><init>(Ljunit/framework/Test;J)V

    .line 302
    .local v5, timedTest:Ljunit/framework/Test;
    return-object v5
.end method

.method private static preformat(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 6
    .parameter "strBuf"
    .parameter "context"

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 43
    .local v2, now:J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 44
    .local v0, currentTime:Ljava/util/Date;
    sget-object v4, Lorg/dom4j/ThreadingTest;->FORMATTER_CACHE:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 46
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    if-nez v1, :cond_0

    .line 47
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    const-string v4, "yyyy-MM-dd HH:mm:ss.SSS zzz"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 48
    .restart local v1       #formatter:Ljava/text/SimpleDateFormat;
    sget-object v4, Lorg/dom4j/ThreadingTest;->FORMATTER_CACHE:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 51
    :cond_0
    const-string v4, "["

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    sget-object v4, Lorg/dom4j/ThreadingTest;->FIELD_ZERO:Ljava/text/FieldPosition;

    invoke-virtual {v1, v0, p0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 53
    const-string v4, " ("

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ") ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v4, " - "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-static {}, Lorg/dom4j/ThreadingTest;->getThreadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v4, " - "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v4, " - "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    return-void
.end method

.method public static suite()Ljunit/framework/Test;
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x5

    .line 273
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0}, Ljunit/framework/TestSuite;-><init>()V

    .line 274
    .local v0, suite:Ljunit/framework/TestSuite;
    const-string v1, "testCombo"

    invoke-static {v2, v3, v1}, Lorg/dom4j/ThreadingTest;->makeRepeatedLoadTest(IILjava/lang/String;)Ljunit/framework/Test;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 275
    const-string v1, "testQNameCache"

    invoke-static {v2, v3, v1}, Lorg/dom4j/ThreadingTest;->makeRepeatedLoadTest(IILjava/lang/String;)Ljunit/framework/Test;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 277
    return-object v0
.end method


# virtual methods
.method public fetchValue(Lorg/dom4j/QName;)Ljava/lang/String;
    .locals 6
    .parameter "qn"

    .prologue
    .line 235
    const/4 v3, 0x0

    .line 237
    .local v3, value:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 238
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, prefix:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    :cond_0
    invoke-virtual {p1}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, uri:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 251
    const-string v4, " xmlns"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 254
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    :cond_1
    const-string v4, "=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    :cond_2
    const-string v4, "/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    return-object v3
.end method

.method public testCombo()V
    .locals 25

    .prologue
    .line 83
    const/16 v14, 0xa

    .line 86
    .local v14, loop:I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 87
    .local v5, begin:J
    const/16 v21, 0x0

    .line 88
    .local v21, value:Ljava/lang/String;
    const/4 v11, 0x0

    .line 89
    .local v11, expected:Ljava/lang/String;
    const/16 v22, 0x0

    .line 90
    .local v22, xml:Ljava/lang/String;
    const/4 v7, 0x0

    .line 91
    .local v7, doc:Lorg/dom4j/Document;
    const/16 v20, 0x0

    .line 92
    .local v20, root:Lorg/dom4j/Element;
    const/4 v13, 0x0

    .line 93
    .local v13, item:Lorg/dom4j/Element;
    const/4 v15, 0x0

    .line 94
    .local v15, newItem:Lorg/dom4j/Element;
    const/16 v19, 0x0

    .line 95
    .local v19, qn:Lorg/dom4j/QName;
    const/16 v18, 0x0

    .line 96
    .local v18, ns:Lorg/dom4j/Namespace;
    const-wide/16 v16, 0x0

    .line 98
    .local v16, now:J
    const-string v22, "<ROOT xmlns:t0=\"http://www.lse.com/t0\" >  <ctx><type>Context</type></ctx>  <A><B><C><D>This is a TEST</D></C></B></A>  <t0:Signon><A>xyz</A><t0:Cust>customer</t0:Cust></t0:Signon></ROOT>"

    .line 104
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-lt v12, v14, :cond_0

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v5

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide v8, v0

    .line 166
    .local v8, duration:D
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v3, v8, v23

    .line 171
    .end local v5           #begin:J
    .end local v7           #doc:Lorg/dom4j/Document;
    .end local v8           #duration:D
    .end local v11           #expected:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #item:Lorg/dom4j/Element;
    .end local v15           #newItem:Lorg/dom4j/Element;
    .end local v16           #now:J
    .end local v18           #ns:Lorg/dom4j/Namespace;
    .end local v19           #qn:Lorg/dom4j/QName;
    .end local v20           #root:Lorg/dom4j/Element;
    .end local v21           #value:Ljava/lang/String;
    .end local v22           #xml:Ljava/lang/String;
    :goto_1
    return-void

    .line 105
    .restart local v5       #begin:J
    .restart local v7       #doc:Lorg/dom4j/Document;
    .restart local v11       #expected:Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #item:Lorg/dom4j/Element;
    .restart local v15       #newItem:Lorg/dom4j/Element;
    .restart local v16       #now:J
    .restart local v18       #ns:Lorg/dom4j/Namespace;
    .restart local v19       #qn:Lorg/dom4j/QName;
    .restart local v20       #root:Lorg/dom4j/Element;
    .restart local v21       #value:Ljava/lang/String;
    .restart local v22       #xml:Ljava/lang/String;
    :cond_0
    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v7

    .line 107
    invoke-interface {v7}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v20

    .line 108
    const-string v23, "t0"

    const-string v24, "http://www.lse.com/t0"

    invoke-static/range {v23 .. v24}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v18

    .line 109
    const-string v23, "Signon"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v19

    .line 110
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v13

    .line 111
    invoke-interface {v13}, Lorg/dom4j/Element;->asXML()Ljava/lang/String;

    move-result-object v21

    .line 112
    const-string v11, "<t0:Signon xmlns:t0=\"http://www.lse.com/t0\"><A>xyz</A><t0:Cust>customer</t0:Cust></t0:Signon>"

    .line 114
    const-string v23, "test t0:Signon "

    move-object/from16 v0, v23

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/dom4j/ThreadingTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v23, "Test"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v19

    .line 117
    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v15

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 119
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, v20

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 122
    const-string v23, "Test2"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v19

    .line 123
    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v15

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 125
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, v20

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 128
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v13

    .line 129
    invoke-interface {v13}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    .line 130
    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setQName(Lorg/dom4j/QName;)V

    .line 131
    move-object/from16 v0, v20

    move-object v1, v13

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 132
    invoke-interface {v13}, Lorg/dom4j/Element;->asXML()Ljava/lang/String;

    move-result-object v21

    .line 133
    new-instance v23, Ljava/lang/StringBuffer;

    const-string v24, "<Test2>"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "</Test2>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 134
    const-string v23, "test Test2 "

    move-object/from16 v0, v23

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/dom4j/ThreadingTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v23, "Test3"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v19

    .line 137
    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v15

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 139
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, v20

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 142
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v13

    .line 143
    invoke-interface {v13}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    .line 144
    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setQName(Lorg/dom4j/QName;)V

    .line 145
    move-object/from16 v0, v20

    move-object v1, v13

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 146
    invoke-interface {v13}, Lorg/dom4j/Element;->asXML()Ljava/lang/String;

    move-result-object v21

    .line 147
    new-instance v23, Ljava/lang/StringBuffer;

    const-string v24, "<Test3>"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "</Test3>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 148
    const-string v23, "test Test3 "

    move-object/from16 v0, v23

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/dom4j/ThreadingTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v23, "Test4"

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v19

    .line 151
    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v15

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 153
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, v20

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 156
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v13

    .line 157
    invoke-interface {v13}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    .line 158
    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setQName(Lorg/dom4j/QName;)V

    .line 159
    move-object/from16 v0, v20

    move-object v1, v13

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 160
    invoke-interface {v13}, Lorg/dom4j/Element;->asXML()Ljava/lang/String;

    move-result-object v21

    .line 161
    new-instance v23, Ljava/lang/StringBuffer;

    const-string v24, "<Test4>"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "</Test4>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 162
    const-string v23, "test Test4 "

    move-object/from16 v0, v23

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/dom4j/ThreadingTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 167
    .end local v5           #begin:J
    .end local v7           #doc:Lorg/dom4j/Document;
    .end local v11           #expected:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #item:Lorg/dom4j/Element;
    .end local v15           #newItem:Lorg/dom4j/Element;
    .end local v16           #now:J
    .end local v18           #ns:Lorg/dom4j/Namespace;
    .end local v19           #qn:Lorg/dom4j/QName;
    .end local v20           #root:Lorg/dom4j/Element;
    .end local v21           #value:Ljava/lang/String;
    .end local v22           #xml:Ljava/lang/String;
    :catch_0
    move-exception v23

    move-object/from16 v10, v23

    .line 168
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    new-instance v23, Ljava/lang/StringBuffer;

    const-string v24, "Exception in test: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/dom4j/ThreadingTest;->assertTrue(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method public testQNameCache()V
    .locals 25

    .prologue
    .line 177
    const/16 v14, 0x64

    .line 180
    .local v14, loop:I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 181
    .local v5, begin:J
    const/16 v21, 0x0

    .line 182
    .local v21, value:Ljava/lang/String;
    const/4 v11, 0x0

    .line 183
    .local v11, expected:Ljava/lang/String;
    const/16 v22, 0x0

    .line 184
    .local v22, xml:Ljava/lang/String;
    const/4 v7, 0x0

    .line 185
    .local v7, doc:Lorg/dom4j/Document;
    const/16 v20, 0x0

    .line 186
    .local v20, root:Lorg/dom4j/Element;
    const/4 v13, 0x0

    .line 187
    .local v13, item:Lorg/dom4j/Element;
    const/4 v15, 0x0

    .line 188
    .local v15, newItem:Lorg/dom4j/Element;
    const/16 v19, 0x0

    .line 189
    .local v19, qn:Lorg/dom4j/QName;
    const/16 v18, 0x0

    .line 190
    .local v18, ns:Lorg/dom4j/Namespace;
    const-wide/16 v16, 0x0

    .line 192
    .local v16, now:J
    const-string v22, "<ROOT xmlns:t0=\"http://www.lse.com/t0\" >  <ctx><type>Context</type></ctx>  <A><B><C><D>This is a TEST</D></C></B></A>  <t0:Signon><A>xyz</A><t0:Cust>customer</t0:Cust></t0:Signon></ROOT>"

    .line 198
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-lt v12, v14, :cond_0

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v5

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide v8, v0

    .line 220
    .local v8, duration:D
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v3, v8, v23

    .line 225
    .end local v5           #begin:J
    .end local v7           #doc:Lorg/dom4j/Document;
    .end local v8           #duration:D
    .end local v11           #expected:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #item:Lorg/dom4j/Element;
    .end local v15           #newItem:Lorg/dom4j/Element;
    .end local v16           #now:J
    .end local v18           #ns:Lorg/dom4j/Namespace;
    .end local v19           #qn:Lorg/dom4j/QName;
    .end local v20           #root:Lorg/dom4j/Element;
    .end local v21           #value:Ljava/lang/String;
    .end local v22           #xml:Ljava/lang/String;
    :goto_1
    return-void

    .line 199
    .restart local v5       #begin:J
    .restart local v7       #doc:Lorg/dom4j/Document;
    .restart local v11       #expected:Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #item:Lorg/dom4j/Element;
    .restart local v15       #newItem:Lorg/dom4j/Element;
    .restart local v16       #now:J
    .restart local v18       #ns:Lorg/dom4j/Namespace;
    .restart local v19       #qn:Lorg/dom4j/QName;
    .restart local v20       #root:Lorg/dom4j/Element;
    .restart local v21       #value:Ljava/lang/String;
    .restart local v22       #xml:Ljava/lang/String;
    :cond_0
    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v7

    .line 200
    invoke-interface {v7}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v20

    .line 202
    const-string v23, "test"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v19

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/dom4j/ThreadingTest;->fetchValue(Lorg/dom4j/QName;)Ljava/lang/String;

    move-result-object v21

    .line 204
    const-string v11, "<test/>"

    .line 205
    const-string v23, "test test "

    move-object/from16 v0, v23

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/dom4j/ThreadingTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v23, "test"

    invoke-static/range {v23 .. v23}, Lorg/dom4j/DocumentHelper;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v19

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/dom4j/ThreadingTest;->fetchValue(Lorg/dom4j/QName;)Ljava/lang/String;

    move-result-object v21

    .line 210
    const-string v11, "<test/>"

    .line 211
    const-string v23, "test test again "

    move-object/from16 v0, v23

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/dom4j/ThreadingTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v23, "t0:Signon"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v19

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/dom4j/ThreadingTest;->fetchValue(Lorg/dom4j/QName;)Ljava/lang/String;

    move-result-object v21

    .line 215
    const-string v11, "<t0:Signon xmlns:t0=\"http://www.lse.com/t0\"/>"

    .line 216
    const-string v23, "test t0:Signon "

    move-object/from16 v0, v23

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/dom4j/ThreadingTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 221
    .end local v5           #begin:J
    .end local v7           #doc:Lorg/dom4j/Document;
    .end local v11           #expected:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #item:Lorg/dom4j/Element;
    .end local v15           #newItem:Lorg/dom4j/Element;
    .end local v16           #now:J
    .end local v18           #ns:Lorg/dom4j/Namespace;
    .end local v19           #qn:Lorg/dom4j/QName;
    .end local v20           #root:Lorg/dom4j/Element;
    .end local v21           #value:Ljava/lang/String;
    .end local v22           #xml:Ljava/lang/String;
    :catch_0
    move-exception v23

    move-object/from16 v10, v23

    .line 222
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    new-instance v23, Ljava/lang/StringBuffer;

    const-string v24, "Exception in test: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/dom4j/ThreadingTest;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_1
.end method
