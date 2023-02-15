const express = require("express");
const app = express();

const port = 3000;

app.get("/", function(req, res) {

    const x = 2 + 2;


    res.send(`
    
        hello ${x}

        <script>
            const num = 2 + ${x};
            document.write(num);
        </script>
    
    `);

};

app.listen(port, function() {
    console.log(`Listening on port ${port}`);
});