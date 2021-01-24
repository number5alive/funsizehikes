echo '# Install Ruby Gems to ~/gems' >> /home/vagrant/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> /home/vagrant/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> /home/vagrant/.bashrc

echo ' Im lazy, you have a step left... do the following when you first log in'
echo ' gem install bundler'

